<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Etudiant Form</title>
    <style><%@include file="Style.css"%></style>
</head>
<body>
<header>
    <div class="img-header"><img src="https://i.ibb.co/FxSPWFC/Community-Logo.png" width="100%"/></div>
    <div class="navbar">
        <a href="#home" id="a1">Accueil</a>
        <a href="#about">À propos</a>
        <a href="#services">Services</a>
        <a href="#contact">Contact</a>
    </div>
</header>
<section class="section_header">
    <div class="section_header_text">
        <h1>Gestion ÉCOLE NUMÉRIQUE AHMED AL HANSALI</h1>
        <p>
            Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le </p>
    </div>
    <div class="section_header_img"><img src="https://i.ibb.co/gMRX48V/Qu-est-ce-que-le-Lorem-Ipsum-Le-Lorem-Ipsum-est-simplement-du-faux-texte-employ-dans-la-composition.png"></div>
</section>

<section class="section_formulairte_general">
    <h2 class="text_form">Etudiant Form</h2>

    <div class="section_form_img">

    <div class="section-img">
        <img src="https://i.pinimg.com/736x/7e/35/3f/7e353fb5f0e662d5d6c55cd9302d366d.jpg">
    </div>
    <div class="section_formulaire">

<form action="saveEtudiant" method="post">


    <label>Nom:</label>
    <input type="text" id="nom" name="nom" required><br>


    <label>Numero:</label>
    <input type="Number" id="numero" name="numero" required><br>


    <label>matricule:</label>
    <input type="text" id="matricule" name="matricule" required><br>

    <label>Email:</label>
    <input type="email" id="email" name="email" required><br>

    <button type="submit">Envoyer</button>
</form>
    </div>
    </div>
</section>
<section class="section_cards">
        <h2>Our Students</h2>
</section>
<section class="section_cards_student">
    <div class="section_cards_student-wrapper">
        <div class="card">
            <div class="card-img">
                    <img src="https://i.ibb.co/LhdkX5B/studio-shot-good-looking-young-businesswoman-posing-against-pink-wall-with-glasses.jpg" width="100%"/>
            </div>
            <div class="card-des">
                <p>info</p>
                <span>Student N°: 3AW</span>
            </div>
            <div class="card-info">
                <h2> Selma Bee</h2>
                <div class="cd">
                    <h3>0648563803</h3>
                    <h4>salmaoussama25@gmail.com</h4>
                </div>
            </div>
            <div>
            </div>
        </div>
        <div class="card">
            <div class="card-img">
                <img src="https://i.ibb.co/LhdkX5B/studio-shot-good-looking-young-businesswoman-posing-against-pink-wall-with-glasses.jpg" width="100%"/>
            </div>
            <div class="card-des">
                <p>info</p>
                <span>Student N°: 3AW</span>
            </div>
            <div class="card-info">
                <h2> Selma Bee</h2>
                <div class="cd">
                    <h3>0648563803</h3>
                    <h4>salmaoussama25@gmail.com</h4>
                </div>
            </div>
            <div>
            </div>
        </div>
        <div class="card">
            <div class="card-img">
                <img src="https://i.ibb.co/LhdkX5B/studio-shot-good-looking-young-businesswoman-posing-against-pink-wall-with-glasses.jpg" width="100%"/>
            </div>
            <div class="card-des">
                <p>info</p>
                <span>Student N°: 3AW</span>
            </div>
            <div class="card-info">
                <h2> Selma Bee</h2>
                <div class="cd">
                    <h3>0648563803</h3>
                    <h4>salmaoussama25@gmail.com</h4>
                </div>
            </div>
            <div>
            </div>
        </div>
    </div>
</section>
<section class="More">
    <button class="showMore">Show More !</button>
</section>
</body>
</body>
</html>
