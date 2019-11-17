<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20191028025145 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE administrator CHANGE roles roles JSON NOT NULL');
        $this->addSql('ALTER TABLE gamereqs RENAME INDEX fk_777dcce5fd86d04 TO fk_gamerequid');
        $this->addSql('ALTER TABLE submissions RENAME INDEX fk_3f6169f75fd86d04 TO fk_subuser');
        $this->addSql('ALTER TABLE submissions RENAME INDEX fk_3f6169f7d73b976c TO fk_subgame');
        $this->addSql('ALTER TABLE users RENAME INDEX fk_1483a5e957a7c05b TO fk_logIn');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE administrator CHANGE roles roles JSON DEFAULT NULL');
        $this->addSql('ALTER TABLE gamereqs RENAME INDEX fk_gamerequid TO FK_777DCCE5FD86D04');
        $this->addSql('ALTER TABLE submissions RENAME INDEX fk_subuser TO FK_3F6169F75FD86D04');
        $this->addSql('ALTER TABLE submissions RENAME INDEX fk_subgame TO FK_3F6169F7D73B976C');
        $this->addSql('ALTER TABLE users RENAME INDEX fk_login TO FK_1483A5E957A7C05B');
    }
}