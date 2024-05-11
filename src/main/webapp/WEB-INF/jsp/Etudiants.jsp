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
<section class="modify" id="modify">

</section>
<script>
    const modif=document.querySelectorAll(".button-modifier");
    const formemodif=document.getElementById("modify");
    modif.forEach(function (e) {
        e.addEventListener("click",()=>{
            formemodif.style.display='flex';


        })

    })


</script>


</body>
</html>
