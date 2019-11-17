<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20191028020217 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE administrator (id INT AUTO_INCREMENT NOT NULL, username VARCHAR(180) NOT NULL, roles JSON NOT NULL, password VARCHAR(255) NOT NULL, UNIQUE INDEX UNIQ_58DF0651F85E0677 (username), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('ALTER TABLE gamereqs DROP FOREIGN KEY fk_gamerequid');
        $this->addSql('ALTER TABLE gamereqs CHANGE userID userID INT DEFAULT NULL');
        $this->addSql('ALTER TABLE gamereqs ADD CONSTRAINT FK_777DCCE5FD86D04 FOREIGN KEY (userID) REFERENCES users (userID)');
        $this->addSql('ALTER TABLE submissions DROP FOREIGN KEY fk_subgame');
        $this->addSql('ALTER TABLE submissions DROP FOREIGN KEY fk_subuser');
        $this->addSql('ALTER TABLE submissions CHANGE gameID gameID INT DEFAULT NULL, CHANGE userID userID INT DEFAULT NULL');
        $this->addSql('ALTER TABLE submissions ADD CONSTRAINT FK_3F6169F7D73B976C FOREIGN KEY (gameID) REFERENCES games (gameID)');
        $this->addSql('ALTER TABLE submissions ADD CONSTRAINT FK_3F6169F75FD86D04 FOREIGN KEY (userID) REFERENCES users (userID)');
        $this->addSql('ALTER TABLE users DROP FOREIGN KEY fk_logIn');
        $this->addSql('ALTER TABLE users CHANGE loginID loginID INT DEFAULT NULL');
        $this->addSql('ALTER TABLE users ADD CONSTRAINT FK_1483A5E957A7C05B FOREIGN KEY (loginID) REFERENCES login (loginID)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('DROP TABLE administrator');
        $this->addSql('ALTER TABLE gamereqs DROP FOREIGN KEY FK_777DCCE5FD86D04');
        $this->addSql('ALTER TABLE gamereqs CHANGE userID userID INT NOT NULL');
        $this->addSql('ALTER TABLE gamereqs ADD CONSTRAINT fk_gamerequid FOREIGN KEY (userID) REFERENCES users (userID) ON UPDATE CASCADE ON DELETE CASCADE');
        $this->addSql('ALTER TABLE submissions DROP FOREIGN KEY FK_3F6169F7D73B976C');
        $this->addSql('ALTER TABLE submissions DROP FOREIGN KEY FK_3F6169F75FD86D04');
        $this->addSql('ALTER TABLE submissions CHANGE gameID gameID INT NOT NULL, CHANGE userID userID INT NOT NULL');
        $this->addSql('ALTER TABLE submissions ADD CONSTRAINT fk_subgame FOREIGN KEY (gameID) REFERENCES games (gameID) ON UPDATE CASCADE ON DELETE CASCADE');
        $this->addSql('ALTER TABLE submissions ADD CONSTRAINT fk_subuser FOREIGN KEY (userID) REFERENCES users (userID) ON UPDATE CASCADE ON DELETE CASCADE');
        $this->addSql('ALTER TABLE users DROP FOREIGN KEY FK_1483A5E957A7C05B');
        $this->addSql('ALTER TABLE users CHANGE loginID loginID INT NOT NULL');
        $this->addSql('ALTER TABLE users ADD CONSTRAINT fk_logIn FOREIGN KEY (loginID) REFERENCES login (loginID) ON UPDATE CASCADE ON DELETE CASCADE');
    }
}
