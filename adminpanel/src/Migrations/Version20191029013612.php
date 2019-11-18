<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20191029013612 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');



    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');



        $this->addSql('ALTER TABLE gamereqs RENAME INDEX fk_gamerequid TO fk_777dcce5fd86d04');
        $this->addSql('ALTER TABLE submissions RENAME INDEX fk_subuser TO fk_3f6169f75fd86d04');
        $this->addSql('ALTER TABLE submissions RENAME INDEX fk_subgame TO fk_3f6169f7d73b976c');
        $this->addSql('ALTER TABLE users RENAME INDEX fk_login TO fk_1483a5e957a7c05b');
    }
}
