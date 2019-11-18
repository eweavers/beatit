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

/* games/form_row.html.twig */
class __TwigTemplate_4f3c323e2c518f875b51e1afac25e3e333b22c6d220a5f0698a0fbc778e53f8b extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
            'form_row' => [$this, 'block_form_row'],
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        $this->displayBlock('form_row', $context, $blocks);
    }

    public function block_form_row($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 2
        echo "    <div class=\"input-field\">
        ";
        // line 3
        echo $this->env->getRuntime('Symfony\Component\Form\FormRenderer')->searchAndRenderBlock(($context["form"] ?? null), 'label');
        echo "
        ";
        // line 4
        echo $this->env->getRuntime('Symfony\Component\Form\FormRenderer')->searchAndRenderBlock(($context["form"] ?? null), 'errors');
        echo "
        ";
        // line 5
        echo $this->env->getRuntime('Symfony\Component\Form\FormRenderer')->searchAndRenderBlock(($context["form"] ?? null), 'widget');
        echo "
    </div>
";
    }

    public function getTemplateName()
    {
        return "games/form_row.html.twig";
    }

    public function getDebugInfo()
    {
        return array (  56 => 5,  52 => 4,  48 => 3,  45 => 2,  38 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "games/form_row.html.twig", "C:\\Users\\ethan\\adminpanel\\templates\\games\\form_row.html.twig");
    }
}
