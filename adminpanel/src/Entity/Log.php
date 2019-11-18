<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Log
 *
 * @ORM\Table(name="log")
 * @ORM\Entity
 */
class Log
{
    /**
     * @var int
     *
     * @ORM\Column(name="logid", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $logid;

    /**
     * @var string|null
     *
     * @ORM\Column(name="referrer", type="string", length=255, nullable=true)
     */
    private $referrer;

    /**
     * @var string
     *
     * @ORM\Column(name="sourceip", type="string", length=255, nullable=false)
     */
    private $sourceip;

    /**
     * @var string
     *
     * @ORM\Column(name="sessionid", type="string", length=255, nullable=false)
     */
    private $sessionid;

    /**
     * @var string
     *
     * @ORM\Column(name="requestedurl", type="string", length=255, nullable=false)
     */
    private $requestedurl;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="timestamp", type="datetime", nullable=false)
     */
    private $timestamp;

    public function getLogid(): ?int
    {
        return $this->logid;
    }

    public function getReferrer(): ?string
    {
        return $this->referrer;
    }

    public function setReferrer(?string $referrer): self
    {
        $this->referrer = $referrer;

        return $this;
    }

    public function getSourceip(): ?string
    {
        return $this->sourceip;
    }

    public function setSourceip(string $sourceip): self
    {
        $this->sourceip = $sourceip;

        return $this;
    }

    public function getSessionid(): ?string
    {
        return $this->sessionid;
    }

    public function setSessionid(string $sessionid): self
    {
        $this->sessionid = $sessionid;

        return $this;
    }

    public function getRequestedurl(): ?string
    {
        return $this->requestedurl;
    }

    public function setRequestedurl(string $requestedurl): self
    {
        $this->requestedurl = $requestedurl;

        return $this;
    }

    public function getTimestamp(): ?\DateTimeInterface
    {
        return $this->timestamp;
    }

    public function setTimestamp(\DateTimeInterface $timestamp): self
    {
        $this->timestamp = $timestamp;

        return $this;
    }


}
