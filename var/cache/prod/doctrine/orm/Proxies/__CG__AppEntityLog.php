<?php

namespace Proxies\__CG__\App\Entity;

/**
 * DO NOT EDIT THIS FILE - IT WAS CREATED BY DOCTRINE'S PROXY GENERATOR
 */
class Log extends \App\Entity\Log implements \Doctrine\ORM\Proxy\Proxy
{
    /**
     * @var \Closure the callback responsible for loading properties in the proxy object. This callback is called with
     *      three parameters, being respectively the proxy object to be initialized, the method that triggered the
     *      initialization process and an array of ordered parameters that were passed to that method.
     *
     * @see \Doctrine\Common\Proxy\Proxy::__setInitializer
     */
    public $__initializer__;

    /**
     * @var \Closure the callback responsible of loading properties that need to be copied in the cloned object
     *
     * @see \Doctrine\Common\Proxy\Proxy::__setCloner
     */
    public $__cloner__;

    /**
     * @var boolean flag indicating if this object was already initialized
     *
     * @see \Doctrine\Common\Persistence\Proxy::__isInitialized
     */
    public $__isInitialized__ = false;

    /**
     * @var array properties to be lazy loaded, with keys being the property
     *            names and values being their default values
     *
     * @see \Doctrine\Common\Proxy\Proxy::__getLazyProperties
     */
    public static $lazyPropertiesDefaults = [];



    /**
     * @param \Closure $initializer
     * @param \Closure $cloner
     */
    public function __construct($initializer = null, $cloner = null)
    {

        $this->__initializer__ = $initializer;
        $this->__cloner__      = $cloner;
    }







    /**
     * 
     * @return array
     */
    public function __sleep()
    {
        if ($this->__isInitialized__) {
            return ['__isInitialized__', '' . "\0" . 'App\\Entity\\Log' . "\0" . 'logid', '' . "\0" . 'App\\Entity\\Log' . "\0" . 'referrer', '' . "\0" . 'App\\Entity\\Log' . "\0" . 'sourceip', '' . "\0" . 'App\\Entity\\Log' . "\0" . 'sessionid', '' . "\0" . 'App\\Entity\\Log' . "\0" . 'requestedurl', '' . "\0" . 'App\\Entity\\Log' . "\0" . 'timestamp'];
        }

        return ['__isInitialized__', '' . "\0" . 'App\\Entity\\Log' . "\0" . 'logid', '' . "\0" . 'App\\Entity\\Log' . "\0" . 'referrer', '' . "\0" . 'App\\Entity\\Log' . "\0" . 'sourceip', '' . "\0" . 'App\\Entity\\Log' . "\0" . 'sessionid', '' . "\0" . 'App\\Entity\\Log' . "\0" . 'requestedurl', '' . "\0" . 'App\\Entity\\Log' . "\0" . 'timestamp'];
    }

    /**
     * 
     */
    public function __wakeup()
    {
        if ( ! $this->__isInitialized__) {
            $this->__initializer__ = function (Log $proxy) {
                $proxy->__setInitializer(null);
                $proxy->__setCloner(null);

                $existingProperties = get_object_vars($proxy);

                foreach ($proxy->__getLazyProperties() as $property => $defaultValue) {
                    if ( ! array_key_exists($property, $existingProperties)) {
                        $proxy->$property = $defaultValue;
                    }
                }
            };

        }
    }

    /**
     * 
     */
    public function __clone()
    {
        $this->__cloner__ && $this->__cloner__->__invoke($this, '__clone', []);
    }

    /**
     * Forces initialization of the proxy
     */
    public function __load()
    {
        $this->__initializer__ && $this->__initializer__->__invoke($this, '__load', []);
    }

    /**
     * {@inheritDoc}
     * @internal generated method: use only when explicitly handling proxy specific loading logic
     */
    public function __isInitialized()
    {
        return $this->__isInitialized__;
    }

    /**
     * {@inheritDoc}
     * @internal generated method: use only when explicitly handling proxy specific loading logic
     */
    public function __setInitialized($initialized)
    {
        $this->__isInitialized__ = $initialized;
    }

    /**
     * {@inheritDoc}
     * @internal generated method: use only when explicitly handling proxy specific loading logic
     */
    public function __setInitializer(\Closure $initializer = null)
    {
        $this->__initializer__ = $initializer;
    }

    /**
     * {@inheritDoc}
     * @internal generated method: use only when explicitly handling proxy specific loading logic
     */
    public function __getInitializer()
    {
        return $this->__initializer__;
    }

    /**
     * {@inheritDoc}
     * @internal generated method: use only when explicitly handling proxy specific loading logic
     */
    public function __setCloner(\Closure $cloner = null)
    {
        $this->__cloner__ = $cloner;
    }

    /**
     * {@inheritDoc}
     * @internal generated method: use only when explicitly handling proxy specific cloning logic
     */
    public function __getCloner()
    {
        return $this->__cloner__;
    }

    /**
     * {@inheritDoc}
     * @internal generated method: use only when explicitly handling proxy specific loading logic
     * @static
     */
    public function __getLazyProperties()
    {
        return self::$lazyPropertiesDefaults;
    }

    
    /**
     * {@inheritDoc}
     */
    public function getLogid(): ?int
    {
        if ($this->__isInitialized__ === false) {
            return (int)  parent::getLogid();
        }


        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getLogid', []);

        return parent::getLogid();
    }

    /**
     * {@inheritDoc}
     */
    public function getReferrer(): ?string
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getReferrer', []);

        return parent::getReferrer();
    }

    /**
     * {@inheritDoc}
     */
    public function setReferrer(?string $referrer): \App\Entity\Log
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setReferrer', [$referrer]);

        return parent::setReferrer($referrer);
    }

    /**
     * {@inheritDoc}
     */
    public function getSourceip(): ?string
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getSourceip', []);

        return parent::getSourceip();
    }

    /**
     * {@inheritDoc}
     */
    public function setSourceip(string $sourceip): \App\Entity\Log
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setSourceip', [$sourceip]);

        return parent::setSourceip($sourceip);
    }

    /**
     * {@inheritDoc}
     */
    public function getSessionid(): ?string
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getSessionid', []);

        return parent::getSessionid();
    }

    /**
     * {@inheritDoc}
     */
    public function setSessionid(string $sessionid): \App\Entity\Log
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setSessionid', [$sessionid]);

        return parent::setSessionid($sessionid);
    }

    /**
     * {@inheritDoc}
     */
    public function getRequestedurl(): ?string
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getRequestedurl', []);

        return parent::getRequestedurl();
    }

    /**
     * {@inheritDoc}
     */
    public function setRequestedurl(string $requestedurl): \App\Entity\Log
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setRequestedurl', [$requestedurl]);

        return parent::setRequestedurl($requestedurl);
    }

    /**
     * {@inheritDoc}
     */
    public function getTimestamp(): ?\DateTimeInterface
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'getTimestamp', []);

        return parent::getTimestamp();
    }

    /**
     * {@inheritDoc}
     */
    public function setTimestamp(\DateTimeInterface $timestamp): \App\Entity\Log
    {

        $this->__initializer__ && $this->__initializer__->__invoke($this, 'setTimestamp', [$timestamp]);

        return parent::setTimestamp($timestamp);
    }

}