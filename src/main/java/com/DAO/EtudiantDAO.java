package com.DAO;

import com.Beans.Etudiant;

import java.sql.SQLException;
import java.util.ArrayList;

public interface EtudiantDAO {
    Etudiant RecupererEtudiantByMatricule(Integer matricule) throws SQLException, ClassNotFoundException;
    void ModifyEtudiant(Integer matricule , Etudiant etudiant) throws SQLException, ClassNotFoundException;
    ArrayList<Etudiant>ShowEtudiants() throws SQLException, ClassNotFoundException;
    ArrayList<Etudiant> SearchEtudiant(String Name) throws SQLException, ClassNotFoundException;
    void AddEtudiant(Etudiant etudiant) throws SQLException, ClassNotFoundException;
    void DeleteEtudiant(Integer matricule) throws SQLException, ClassNotFoundException;
    ArrayList<Etudiant>Show4Etudiants() throws SQLException, ClassNotFoundException;

}

