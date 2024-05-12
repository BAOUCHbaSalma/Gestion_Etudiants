package com.Beans;

public class Etudiant {
    private String nom;
    private Integer numero;
    private Integer matricule;

    public Etudiant() {
    }

    private String email;

    public Etudiant(String nom, Integer numero, Integer matricule, String email) {
        this.nom = nom;
        this.numero = numero;
        this.matricule = matricule;
        this.email = email;
    }

    public Integer getNumero() {
        return numero;
    }

    public void setNumero(Integer numero) {
        this.numero = numero;
    }

    public Integer getMatricule() {
        return matricule;
    }

    public void setMatricule(Integer matricule) {
        this.matricule = matricule;
    }

    // Getters and Setters
    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Etudiant{" +
                "nom='" + nom + '\'' +
                ", numero=" + numero +
                ", matricule='" + matricule + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
