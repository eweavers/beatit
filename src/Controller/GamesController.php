<?php

namespace App\Controller;

use App\Entity\Games;
use App\Form\GamesType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Validator\Validator\ValidatorInterface;


/**
 * @Route("/games")
 */
class GamesController extends AbstractController
{
    /**
     * @Route("/", name="games_index", methods={"GET"})
     */
    public function index(): Response
    {
        $games = $this->getDoctrine()
            ->getRepository(Games::class)
            ->findAll();

        return $this->render('games/index.html.twig', [
            'games' => $games,
        ]);
    }

    /**
     * @Route("/new", name="games_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $game = new Games();
        $form = $this->createForm(GamesType::class, $game);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($game);
            $entityManager->flush();

            return $this->redirectToRoute('games_index');
        }

        return $this->render('games/new.html.twig', [
            'game' => $game,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{gameid}", name="games_show", methods={"GET"})
     */
    public function show(Games $game): Response
    {
        return $this->render('games/show.html.twig', [
            'game' => $game,
        ]);
    }

    /**
     * @Route("/{gameid}/edit", name="games_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Games $game): Response
    {
        $form = $this->createForm(GamesType::class, $game);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('games_index');
        }

        return $this->render('games/edit.html.twig', [
            'game' => $game,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{gameid}", name="games_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Games $game): Response
    {
        if ($this->isCsrfTokenValid('delete'.$game->getGameid(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($game);
            $entityManager->flush();
        }

        return $this->redirectToRoute('games_index');
    }

    public function games(ValidatorInterface $validator)
    {
        $author = new Author();
    
        // ... do something to the $author object
    
        $errors = $validator->validate($author);
    
        if (count($errors) > 0) {
            /*
             * Uses a __toString method on the $errors variable which is a
             * ConstraintViolationList object. This gives us a nice string
             * for debugging.
             */
            $errorsString = (string) $errors;
    
            return new Response($errorsString);
        }
    
        return new Response('The author is valid! Yes!');
    }}
