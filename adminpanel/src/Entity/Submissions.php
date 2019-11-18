<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Submissions
 *
 * @ORM\Table(name="submissions", indexes={@ORM\Index(name="fk_subuser", columns={"userID"}), @ORM\Index(name="fk_subgame", columns={"gameID"})})
 * @ORM\Entity
 */
class Submissions
{
    /**
     * @var int
     *
     * @ORM\Column(name="subID", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $subid;

    /**
     * @var int|null
     *
     * @ORM\Column(name="completehrs", type="integer", nullable=true)
     */
    private $completehrs;

    /**
     * @var int|null
     *
     * @ORM\Column(name="speedrunhrs", type="integer", nullable=true)
     */
    private $speedrunhrs;

    /**
     * @var int|null
     *
     * @ORM\Column(name="mainhrs", type="integer", nullable=true)
     */
    private $mainhrs;

    /**
     * @var \Games
     *
     * @ORM\ManyToOne(targetEntity="Games")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="gameID", referencedColumnName="gameID")
     * })
     */
    private $gameid;

    /**
     * @var \Users
     *
     * @ORM\ManyToOne(targetEntity="Users")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="userID", referencedColumnName="userID")
     * })
     */
    private $userid;

    public function getSubid(): ?int
    {
        return $this->subid;
    }

    public function getCompletehrs(): ?int
    {
        return $this->completehrs;
    }

    public function setCompletehrs(?int $completehrs): self
    {
        $this->completehrs = $completehrs;

        return $this;
    }

    public function getSpeedrunhrs(): ?int
    {
        return $this->speedrunhrs;
    }

    public function setSpeedrunhrs(?int $speedrunhrs): self
    {
        $this->speedrunhrs = $speedrunhrs;

        return $this;
    }

    public function getMainhrs(): ?int
    {
        return $this->mainhrs;
    }

    public function setMainhrs(?int $mainhrs): self
    {
        $this->mainhrs = $mainhrs;

        return $this;
    }

    public function getGameid(): ?Games
    {
        return $this->gameid;
    }

    public function setGameid(?Games $gameid): self
    {
        $this->gameid = $gameid;

        return $this;
    }

    public function getUserid(): ?Users
    {
        return $this->userid;
    }

    public function setUserid(?Users $userid): self
    {
        $this->userid = $userid;

        return $this;
    }


}
