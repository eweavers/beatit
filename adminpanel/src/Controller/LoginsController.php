<?php

namespace App\Controller;

use App\Entity\Logins;
use App\Form\LoginsType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/logins")
 */
class LoginsController extends AbstractController
{
    /**
     * @Route("/", name="logins_index", methods={"GET"})
     */
    public function index(): Response
    {
        $logins = $this->getDoctrine()
            ->getRepository(Logins::class)
            ->findAll();

        return $this->render('logins/index.html.twig', [
            'logins' => $logins,
        ]);
    }

    /**
     * @Route("/new", name="logins_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $login = new Logins();
        $form = $this->createForm(LoginsType::class, $login);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($login);
            $entityManager->flush();

            return $this->redirectToRoute('logins_index');
        }

        return $this->render('logins/new.html.twig', [
            'login' => $login,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{loginid}", name="logins_show", methods={"GET"})
     */
    public function show(Logins $login): Response
    {
        return $this->render('logins/show.html.twig', [
            'login' => $login,
        ]);
    }

    /**
     * @Route("/{loginid}/edit", name="logins_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Logins $login): Response
    {
        $form = $this->createForm(LoginsType::class, $login);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('logins_index');
        }

        return $this->render('logins/edit.html.twig', [
            'login' => $login,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{loginid}", name="logins_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Logins $login): Response
    {
        if ($this->isCsrfTokenValid('delete'.$login->getLoginid(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($login);
            $entityManager->flush();
        }

        return $this->redirectToRoute('logins_index');
    }
}
