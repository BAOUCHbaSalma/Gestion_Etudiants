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

    @Override
    public ArrayList<Etudiant> SearchEtudiant(String name) throws SQLException, ClassNotFoundException {
        ArrayList<Etudiant> etudiantsSearch=new ArrayList<>();
            String requet = "SELECT * FROM  etudiants WHERE Name=?";
            PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(requet);
            statement.setString(1,name);
            ResultSet resultat = statement.executeQuery();

            while (resultat.next()) {
                Integer matricule= resultat.getInt("Matricule");
                String Name=resultat.getString("Name");
                String Email=resultat.getString("Email");
                Integer Numero= resultat.getInt("Numero");
                Etudiant SearchEtudiant=new Etudiant(Name,Numero,matricule,Email);
                etudiantsSearch.add(SearchEtudiant);





            }
           return etudiantsSearch;

        }

    @Override
    public void AddEtudiant(Etudiant etudiant) throws SQLException, ClassNotFoundException {
            String sql = "INSERT INTO etudiants (Name, Numero, Email) VALUES (?,?,?)";
            PreparedStatement s = ConnectionDAO.getConnection().prepareStatement(sql);

            s.setString(1, etudiant.getNom());
            s.setInt(2, etudiant.getNumero());
            s.setString(3, etudiant.getEmail());
            s.executeUpdate();

        }

    @Override
    public void DeleteEtudiant(Integer matricule) throws SQLException, ClassNotFoundException {
        String sql = "DELETE FROM etudiants WHERE matricule = ?";
        PreparedStatement statement = ConnectionDAO.getConnection().prepareStatement(sql);
        statement.setInt(1, matricule);
        statement.executeUpdate();
    }
}



