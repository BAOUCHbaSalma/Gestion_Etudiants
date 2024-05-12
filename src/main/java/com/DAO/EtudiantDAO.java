package com.DAO;

import com.Beans.Etudiant;

import java.sql.SQLException;
import java.util.ArrayList;

public interface EtudiantDAO {
   void Ajouter(Etudiant etudiant);
  ArrayList<Etudiant> AfficherEtudiants();
     void Delete(Integer matricule);
    Etudiant RecupererEtudiantByMatricule(Integer matricule );
    Etudiant ModifyEtudiant(Integer matricule , Etudiant etudiant);
    ArrayList<Etudiant> SearchByName(String name);
    ArrayList<Etudiant>ShowEtudiants() throws SQLException, ClassNotFoundException;
}
