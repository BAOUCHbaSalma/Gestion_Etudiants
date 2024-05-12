package com.DAO;

import com.Beans.Etudiant;

import java.sql.SQLException;
import java.util.ArrayList;

public interface EtudiantDAO {
   void Ajouter(Etudiant etudiant);

     void Delete(Integer matricule);
    Etudiant RecupererEtudiantByMatricule(Integer matricule );
    Etudiant ModifyEtudiant(Integer matricule , Etudiant etudiant);

    ArrayList<Etudiant>ShowEtudiants() throws SQLException, ClassNotFoundException;
    ArrayList<Etudiant> SearchEtudiant(String Name) throws SQLException, ClassNotFoundException;
    void AddEtudiant(Etudiant etudiant) throws SQLException, ClassNotFoundException;
}
