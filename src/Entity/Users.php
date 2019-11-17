<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Users
 *
 * @ORM\Table(name="users", indexes={@ORM\Index(name="fk_logIn", columns={"loginID"})})
 * @ORM\Entity
 */
class Users
{
    /**
     * @var int
     *
     * @ORM\Column(name="userID", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $userid;

    /**
     * @var string
     *
     * @ORM\Column(name="firstName", type="string", length=255, nullable=false)
     */
    private $firstname;

    /**
     * @var string
     *
     * @ORM\Column(name="lastName", type="string", length=255, nullable=false)
     */
    private $lastname;

    /**
     * @var string
     *
     * @ORM\Column(name="email", type="string", length=255, nullable=false)
     */
    private $email;

    /**
     * @var \Login
     *
     * @ORM\ManyToOne(targetEntity="Login")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="loginID", referencedColumnName="loginID")
     * })
     */
    private $loginid;

    public function getUserid(): ?int
    {
        return $this->userid;
    }

    public function __toString()
    {
        return $this->firstname;
    }

    public function getFirstname(): ?string
    {
        return $this->firstname;
    }

    
    public function setFirstname(string $firstname): self
    {
        $this->firstname = $firstname;

        return $this;
    }

    public function getLastname(): ?string
    {
        return $this->lastname;
    }

    public function setLastname(string $lastname): self
    {
        $this->lastname = $lastname;

        return $this;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(string $email): self
    {
        $this->email = $email;

        return $this;
    }

    public function getLoginid(): ?string
    {
        return $this->loginid;
    }

    public function setLoginid(?Login $loginid): self
    {
        $this->loginid = $loginid;

        return $this;
    }
    

}
