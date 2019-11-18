<?php

namespace App\Controller;

use App\Entity\Gamereqs;
use App\Form\GamereqsType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/gamereqs")
 */
class GamereqsController extends AbstractController
{
    /**
     * @Route("/", name="gamereqs_index", methods={"GET"})
     */
    public function index(): Response
    {
        $gamereqs = $this->getDoctrine()
            ->getRepository(Gamereqs::class)
            ->findAll();

        return $this->render('gamereqs/index.html.twig', [
            'gamereqs' => $gamereqs,
        ]);
    }

    /**
     * @Route("/new", name="gamereqs_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $gamereq = new Gamereqs();
        $form = $this->createForm(GamereqsType::class, $gamereq);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($gamereq);
            $entityManager->flush();

            return $this->redirectToRoute('gamereqs_index');
        }

        return $this->render('gamereqs/new.html.twig', [
            'gamereq' => $gamereq,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{gamerid}", name="gamereqs_show", methods={"GET"})
     */
    public function show(Gamereqs $gamereq): Response
    {
        return $this->render('gamereqs/show.html.twig', [
            'gamereq' => $gamereq,
        ]);
    }

    /**
     * @Route("/{gamerid}/edit", name="gamereqs_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Gamereqs $gamereq): Response
    {
        $form = $this->createForm(GamereqsType::class, $gamereq);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('gamereqs_index');
        }

        return $this->render('gamereqs/edit.html.twig', [
            'gamereq' => $gamereq,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{gamerid}", name="gamereqs_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Gamereqs $gamereq): Response
    {
        if ($this->isCsrfTokenValid('delete'.$gamereq->getGamerid(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($gamereq);
            $entityManager->flush();
        }

        return $this->redirectToRoute('gamereqs_index');
    }
}
