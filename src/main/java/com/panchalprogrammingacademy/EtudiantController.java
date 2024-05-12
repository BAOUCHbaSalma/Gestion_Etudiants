package com.panchalprogrammingacademy;


import com.Beans.Etudiant;

import com.DAO.EtudiantDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.*;

import java.sql.SQLException;


@Controller
 class EtudiantController {

    @Autowired
    private EtudiantDAO etudiantDAO;


    @RequestMapping(value = "/")
    public String showEtudiantForm(Model model) {
        model.addAttribute("Etudiant", new Etudiant());
        return "Etudiant";
    }

    @RequestMapping(value = "/saveEtudiant")
    public String saveEtudiant(Etudiant etudiant) throws SQLException, ClassNotFoundException {

        etudiantDAO.AddEtudiant(etudiant);
        return "redirect:/etudiants";
    }


    @RequestMapping("/etudiants")
    public String showEtudiants(Model model) throws SQLException, ClassNotFoundException {
        model.addAttribute("Etudiants",  etudiantDAO.ShowEtudiants());

        return "Etudiants";
    }



    @RequestMapping(value = "/deleteEtudiant/{matricule}")
    public String DeleteEtudiant(@PathVariable("matricule") Integer matricule) throws SQLException, ClassNotFoundException {
        etudiantDAO.DeleteEtudiant(matricule);
        return "redirect:/etudiants";
    }




    @RequestMapping(value = "/modifyEtudiant/{matricule}")
    public String ModifyEtudiant(@PathVariable("matricule") Integer matricule,Model model) throws SQLException, ClassNotFoundException {
      model.addAttribute("etudiant",etudiantDAO.RecupererEtudiantByMatricule(matricule));

        return "FormeModify";

    }

    @RequestMapping("/saveNewEtudiant")

    public String saveNewEtudiant(@ModelAttribute("matricule") Integer matricule, Etudiant etudiant) throws SQLException, ClassNotFoundException {

        etudiantDAO.ModifyEtudiant(matricule, etudiant);

        return "redirect:/etudiants";
    }




    @RequestMapping(value = "/Search")
    public String Search(@RequestParam("nom") String nom, Model model) throws SQLException, ClassNotFoundException {
        model.addAttribute("Etudiants", etudiantDAO.SearchEtudiant(nom));
        return "Etudiants";
    }


}




