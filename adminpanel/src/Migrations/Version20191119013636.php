<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20191119013636 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE gamereqs DROP FOREIGN KEY FK_777DCCE5FD86D04');
        $this->addSql('ALTER TABLE gamereqs ADD CONSTRAINT FK_777DCCE5FD86D04 FOREIGN KEY (userID) REFERENCES users (userID)');
        $this->addSql('ALTER TABLE games CHANGE gametitle gametitle VARCHAR(60) NOT NULL');
        $this->addSql('ALTER TABLE users DROP FOREIGN KEY FK_1483A5E957A7C05B');
        $this->addSql('ALTER TABLE users ADD CONSTRAINT FK_1483A5E957A7C05B FOREIGN KEY (loginID) REFERENCES login (loginID)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE gamereqs DROP FOREIGN KEY FK_777DCCE5FD86D04');
        $this->addSql('ALTER TABLE gamereqs ADD CONSTRAINT FK_777DCCE5FD86D04 FOREIGN KEY (userID) REFERENCES users (userID) ON UPDATE CASCADE ON DELETE CASCADE');
        $this->addSql('ALTER TABLE games CHANGE gametitle gametitle VARCHAR(255) NOT NULL COLLATE latin1_swedish_ci');
        $this->addSql('ALTER TABLE users DROP FOREIGN KEY FK_1483A5E957A7C05B');
        $this->addSql('ALTER TABLE users ADD CONSTRAINT FK_1483A5E957A7C05B FOREIGN KEY (loginID) REFERENCES login (loginID) ON UPDATE CASCADE ON DELETE CASCADE');
    }
}
