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
        <a href="${pageContext.request.contextPath}">Home</a>
        <a href="etudiants"id="a1">Students</a>
        <a href="#services">Services</a>
        <a href="#contact">Contact</a>
    </div>
</header>

<form action="Search" method="GET">
    <h2 class="text_form">Search Student</h2>
    <label>Enter Name:</label>
    <input type="text" name="nom" placeholder="Search by name">
    <button type="submit">Search</button>

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
            <div class="card-name">
                <h2> ${Etudiant.getNom()}</h2>
                <div class="icon">
                    <a href="modifyEtudiant/${Etudiant.getMatricule()}"><img src="https://i.ibb.co/4mG4sK7/1486505375-edit-pen-change-option-pencil-write-81422.png" width="100%"></a>
                    <a href="deleteEtudiant/${Etudiant.getMatricule()}"><img src="https://i.ibb.co/gWJ1bfn/1486504830-delete-dustbin-empty-recycle-recycling-remove-trash-81361.png" width="100%"></a>
                </div>
            </div>



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
<section class="modify">
<section class="section_formulairte_general">
    <h2 class="text_form">Modify Form</h2>

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
</section>
<script>

</script>

</body>
</html>
