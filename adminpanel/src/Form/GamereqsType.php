<?php

namespace App\Form;

use App\Entity\Gamereqs;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;


class GamereqsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
        ->add('gametitle', TextType::class, [
            'attr' => ['class' => 'validate',
            'pattern' => '^[-\w ]+$']
        ] )
        ->add('platforms', TextType::class, [
            'attr' => ['class' => 'validate',
            'pattern' => '^[-\w ]+$']

        ])
        ->add('gamedescription', TextareaType::class, [
            'attr' => ['class' => 'materialize-textarea']
        ])
        ->add('releasedate', TextType::class, [
            'attr' => ['class' => 'validate',
            'pattern' => '^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$']                
        ])
        ->add('thumbnailurl', TextType::class, [
            'attr' => ['class' => 'validate']
        ])
            ->add('userid')
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Gamereqs::class,
        ]);
    }
}
