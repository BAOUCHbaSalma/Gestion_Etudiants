package com.DAO;

import com.Beans.Etudiant;

import com.Config.ConnectionDAO;
import org.springframework.stereotype.Repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

@Repository
public class EtudiantDAOImpl implements EtudiantDAO{
    private static ArrayList<Etudiant> etudiants = new ArrayList<>();

    @Override
    public void Ajouter(Etudiant etudiant) {
        etudiants.add(etudiant);

    }

    @Override
    public ArrayList<Etudiant> AfficherEtudiants() {
        System.out.println(etudiants);
      return etudiants;
    }

    @Override
    public void Delete(Integer matricule) {
        etudiants.removeIf(etudiant -> etudiant.getMatricule().equals(matricule));

    }

    @Override
    public Etudiant RecupererEtudiantByMatricule(Integer matricule ) {
       for (Etudiant etudiant:etudiants){
           if (etudiant.getMatricule().equals(matricule)){
               return etudiant;
           }
       }
       return null;
    }

    @Override
    public Etudiant ModifyEtudiant(Integer matricule , Etudiant etudiant) {
        for (Etudiant etudiant1:etudiants){
            if(etudiant1.getMatricule().equals(matricule)){
                etudiant1.setNom(etudiant.getNom());
                etudiant1.setNumero(etudiant.getNumero());
                etudiant1.setEmail(etudiant.getEmail());

            }
        }
        return null;
    }

    @Override
    public ArrayList<Etudiant> SearchByName(String name) {
        ArrayList<Etudiant> etudiantsSearch = new ArrayList<>();
        for (Etudiant etudiant:etudiants){
            if (etudiant.getNom().equals(name)){
                etudiantsSearch.add(etudiant);
            }
        }
        return etudiantsSearch;
    }

    @Override
    public ArrayList<Etudiant> ShowEtudiants() throws SQLException, ClassNotFoundException {
            ArrayList<Etudiant> etudiants1=new ArrayList<>();
            String sql="SELECT * FROM etudiants";
            PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(sql);
            ResultSet resultat = statement.executeQuery();

            while (resultat.next()) {
                Integer matricule = resultat.getInt("Matricule");
                String name=resultat.getString("Name");
                String Email=resultat.getString("Email");
                Integer Numero = resultat.getInt("Numero");

              Etudiant et=new Etudiant(name,Numero,matricule,Email);
              etudiants1.add(et);




            }
            return etudiants1;
        }
    }

