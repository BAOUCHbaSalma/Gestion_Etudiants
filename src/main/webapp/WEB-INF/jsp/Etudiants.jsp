<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Etudiants</title>
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

<form action="Search" method="GET">
    <h2 class="text_form">Search Student</h2>
    <label>Enter Name:</label>
    <input type="text" name="nom" placeholder="Search by name">
    <button type="submit">envoyer</button>

</form>

<section>
    <h2 class="text_form">List Of Students</h2>
</section>
<section class="section_cards_student">
    <div class="section_cards_student-wrapper">
<c:forEach var="Etudiant" items="${Etudiants}">
        <div class="card">
            <div class="card-img">
                <img src="https://i.ibb.co/LhdkX5B/studio-shot-good-looking-young-businesswoman-posing-against-pink-wall-with-glasses.jpg" width="100%"/>
            </div>
            <div class="card-des">
                <p>info</p>
                <span>Student N°: ${Etudiant.getMatricule()}</span>
            </div>
            <div class="card-info">
                <h2>${Etudiant.getNom()}</h2>
                <div class="cd">
                    <h3>${Etudiant.getNumero()}</h3>
                    <h4>${Etudiant.getEmail()}</h4>

                </div>
            </div>
            <div>
            </div>
        </div>
</c:forEach>
    </div>
</section>

</body>
</html>
