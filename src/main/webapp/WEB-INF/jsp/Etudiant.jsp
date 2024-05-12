<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Etudiant Form</title>
    <style><%@include file="Style.css"%></style>
</head>
<body>


<section class="main">
    <header>

        <div class="img-header"><img src="https://i.ibb.co/FxSPWFC/Community-Logo.png" width="100%"/></div>
        <div class="navbar">
            <a href="${pageContext.request.contextPath}" id="a1">Home</a>
            <a href="etudiants">Students</a>
            <a href="#services">Services</a>
            <a href="#contact">Contact</a>
        </div>
    </header>

    <section class="section_header">


        <div class="section_header_text">

            <h2><em>Simplify</em> your administrative tasks for smoother and optimized <em>management</em></h2>
        </div>

        <div class="section_header_img"><img src="https://i.ibb.co/gMRX48V/Qu-est-ce-que-le-Lorem-Ipsum-Le-Lorem-Ipsum-est-simplement-du-faux-texte-employ-dans-la-composition.png"></div>
    </section>
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
<c:forEach var="Etudiant" items="${EtudiantLimit}">
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
<section class="More">
    <a href="etudiants"><button class="showMore">Show More !</button></a>
</section>
</body>
</body>
</html>
