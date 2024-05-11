<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <style><%@include file="Style.css"%></style>
  <title>Modify Form</title>
</head>
<body>
<header>

  <div class="img-header"><img src="https://i.ibb.co/FxSPWFC/Community-Logo.png" width="100%"/></div>
  <div class="navbar">
    <a href="${pageContext.request.contextPath}" id="a1">Home</a>
    <a href="etudiants">Students</a>
    <a href="#services">Services</a>
    <a href="#contact">Contact</a>
  </div>
</header>

<section class="section_formulairte_general">
  <h2 class="text_form">Modify Form</h2>

  <div class="section_form_img">

    <div class="section-img">
      <img src="https://i.pinimg.com/736x/7e/35/3f/7e353fb5f0e662d5d6c55cd9302d366d.jpg">
    </div>
    <div class="section_formulaire">

      <form action="${pageContext.request.contextPath}/saveNewEtudiant" method="post">


        <label>Nom:</label>
        <input type="text" id="nom" name="nom" value="${etudiant.getNom()}" required><br>


        <label>Numero:</label>
        <input type="Number" id="numero" name="numero" value="${etudiant.getNumero()}" required><br>

        
        <input type="hidden" id="matricule" name="matricule" value="${etudiant.getMatricule()}"  required><br>

        <label>Email:</label>
        <input type="email" id="email" name="email" value="${etudiant.getEmail()}" required><br>

        <button type="submit">Envoyer</button>
      </form>
    </div>
  </div>
</section>


</body>
</html>
