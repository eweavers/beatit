<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* base.html.twig */
class __TwigTemplate_ab788599fd9b220745700e77b34899bf2209b958362c2e813ab2c667aac6425e extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
            'title' => [$this, 'block_title'],
            'stylesheets' => [$this, 'block_stylesheets'],
            'body' => [$this, 'block_body'],
            'javascripts' => [$this, 'block_javascripts'],
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        echo "<!DOCTYPE html>
<html>
    <head>
        <meta charset=\"UTF-8\">
        <title>";
        // line 5
        $this->displayBlock('title', $context, $blocks);
        echo "</title>
        ";
        // line 6
        $this->displayBlock('stylesheets', $context, $blocks);
        // line 10
        echo "    </head>
    <body>
     ";
        // line 12
        if ($this->extensions['Symfony\Bridge\Twig\Extension\SecurityExtension']->isGranted("IS_AUTHENTICATED_FULLY")) {
            // line 13
            echo "
        <nav>
            <div class=\"nav-wrapper\">
            <ul>
            <li><a href=\"/games\">Games</a></li>
            <li><a href=\"/gamereqs\">Game Requests</a></li>
            <li><a href=\"/logout\">Logout</a></li>
            <ul>
            <div>
        </nav>
        ";
        } else {
            // line 24
            echo "            <nav>
            <a href=\"/login\">Login</a>
        </nav>
        ";
        }
        // line 28
        echo "        ";
        $this->displayBlock('body', $context, $blocks);
        // line 29
        echo "        ";
        $this->displayBlock('javascripts', $context, $blocks);
        // line 33
        echo "    </body>
</html>
";
    }

    // line 5
    public function block_title($context, array $blocks = [])
    {
        $macros = $this->macros;
        echo "Welcome!";
    }

    // line 6
    public function block_stylesheets($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 7
        echo "        <link rel=\"stylesheet\" href=\"";
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\HttpFoundationExtension']->generateAbsoluteUrl($this->extensions['Symfony\Bridge\Twig\Extension\AssetExtension']->getAssetUrl("css/css.css")), "html", null, true);
        echo "\">
            <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css\">
        ";
    }

    // line 28
    public function block_body($context, array $blocks = [])
    {
        $macros = $this->macros;
    }

    // line 29
    public function block_javascripts($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 30
        echo "        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>
         <script src=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js\"></script>
        ";
    }

    public function getTemplateName()
    {
        return "base.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  119 => 30,  115 => 29,  109 => 28,  101 => 7,  97 => 6,  90 => 5,  84 => 33,  81 => 29,  78 => 28,  72 => 24,  59 => 13,  57 => 12,  53 => 10,  51 => 6,  47 => 5,  41 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "base.html.twig", "C:\\Users\\ethan\\adminpanel\\templates\\base.html.twig");
    }
}
