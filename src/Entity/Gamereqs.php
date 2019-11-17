<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;


/**
 * Gamereqs
 *
 * @ORM\Table(name="gamereqs", indexes={@ORM\Index(name="fk_gamerequid", columns={"userID"})})
 * @ORM\Entity
 */
class Gamereqs
{
    /**
     * @var int
     *
     * @ORM\Column(name="gameRID", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $gamerid;

    /**
     * @var string
     *
     * @ORM\Column(name="gametitle", type="string", length=255, nullable=false)
     * 
     * @Assert\Regex(
     *     pattern="/^\w+([\s-_]\w+)*$/",
     *     htmlPattern="^\w+([\s-_]\w+)*$",
     *     message="The Gametitle must be alphanumeric"
     * )
     */
    protected $gametitle;

    /**
     * @var string
     *
     * @ORM\Column(name="platforms", type="string", length=255, nullable=false)
     * 
     *  @Assert\Regex(
     *     pattern="/^\w+([\s-_]\w+)*$/",
     *     htmlPattern="^\w+([\s-_]\w+)*$",
     *     message="The platform must be alphanumeric"
     * )
     */
    protected $platforms;

    /**
     * @var string
     *
     * @ORM\Column(name="gamedescription", type="text", length=65535, nullable=false)
     */
    private $gamedescription;

    /**
     * @var string
     *
     * @ORM\Column(name="releasedate", type="string", length=255, nullable=false)
     * 
     *  @Assert\Regex(
     *     pattern = "/^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/",
     *     htmlPattern = "^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$",
     *     message="The Date must be DD.MM.YYYY"
     * )
     */
    private $releasedate;

    /**
     * @var string
     *
     * @ORM\Column(name="thumbnailurl", type="string", length=255, nullable=false)
     */
    private $thumbnailurl;

    /**
     * @var \Users
     *
     * @ORM\ManyToOne(targetEntity="Users")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="userID", referencedColumnName="userID")
     * })
     */
    private $userid;

    public function getGamerid(): ?int
    {
        return $this->gamerid;
    }

    public function getGametitle(): ?string
    {
        return $this->gametitle;
    }

    public function setGametitle(string $gametitle): self
    {
        $this->gametitle = $gametitle;

        return $this;
    }

    public function getPlatforms(): ?string
    {
        return $this->platforms;
    }

    public function setPlatforms(string $platforms): self
    {
        $this->platforms = $platforms;

        return $this;
    }

    public function getGamedescription(): ?string
    {
        return $this->gamedescription;
    }

    public function setGamedescription(string $gamedescription): self
    {
        $this->gamedescription = $gamedescription;

        return $this;
    }

    public function getReleasedate(): ?string
    {
        return $this->releasedate;
    }

    public function setReleasedate(string $releasedate): self
    {
        $this->releasedate = $releasedate;

        return $this;
    }

    public function getThumbnailurl(): ?string
    {
        return $this->thumbnailurl;
    }

    public function setThumbnailurl(string $thumbnailurl): self
    {
        $this->thumbnailurl = $thumbnailurl;

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
