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

/* gamereqs/form_row.html.twig */
class __TwigTemplate_fb94faee241cbf270dd6caf8734b320153e534a7e1e82c22c7cdd87ddecde79d extends \Twig\Template
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
        return "gamereqs/form_row.html.twig";
    }

    public function getDebugInfo()
    {
        return array (  56 => 5,  52 => 4,  48 => 3,  45 => 2,  38 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "gamereqs/form_row.html.twig", "C:\\Users\\ethan\\adminpanel\\templates\\gamereqs\\form_row.html.twig");
    }
}
