<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Etudiants</title>
</head>
<body>
<h2>Liste des Etudiants</h2>
<table>
    <tr>
        <th>Nom</th>
        <th>Numero</th>
        <th>Matricule</th>
        <th>Email</th>
    </tr>
    <c:forEach var="Etudiant" items="${Etudiants}">
        <tr>
            <td>${Etudiant.getNom()}</td>
            <td>${Etudiant.getNumero()}</td>
            <td>${Etudiant.getMatricule()}</td>
            <td>${Etudiant.getEmail()}</td>

        </tr>
    </c:forEach>
</table>
</body>
</html>
