<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Login
 *
 * @ORM\Table(name="login")
 * @ORM\Entity
 */
class Logins
{
    /**
     * @var int
     *
     * @ORM\Column(name="loginID", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $loginid;

    /**
     * @var string
     *
     * @ORM\Column(name="username", type="string", length=255, nullable=false)
     */
    private $username;

    /**
     * @var string
     *
     * @ORM\Column(name="password", type="string", length=255, nullable=false)
     */
    private $password;

    /**
     * @var string
     *
     * @ORM\Column(name="accessrights", type="string", length=255, nullable=false, options={"default"="user"})
     */
    private $accessrights = 'user';

    public function getLoginid(): ?int
    {
        return $this->loginid;
    }

    public function getUsername(): ?string
    {
        return $this->username;
    }

    public function setUsername(string $username): self
    {
        $this->username = $username;

        return $this;
    }

    public function getPassword(): ?string
    {
        return $this->password;
    }

    public function setPassword(string $password): self
    {
        $this->password = $password;

        return $this;
    }

    public function getAccessrights(): ?string
    {
        return $this->accessrights;
    }

    public function setAccessrights(string $accessrights): self
    {
        $this->accessrights = $accessrights;

        return $this;
    }


}
