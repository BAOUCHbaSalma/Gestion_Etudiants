package com.panchalprogrammingacademy;


import Beans.Etudiant;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;


@Controller
public class EtudiantController {

    private static List<Etudiant> etudiants = new ArrayList<>();

    @RequestMapping (value = "/" )
    public String showEtudiantForm(Model model) {
        model.addAttribute("Etudiant", new Etudiant());
        return "Etudiant";
    }


    @RequestMapping (value = "/deleteEtudiant/{matricule}")
    public String DeleteEtudiant(@PathVariable("matricule") String matricule) {
        etudiants.removeIf(etudiant -> etudiant.getMatricule().equals(matricule));
           return "redirect:/etudiants";
    }

    @RequestMapping (value = "/modifyEtudiant/{matricule}" )
    public String ModifyEtudiant(@PathVariable("matricule") String matricule,Model model) {
        model.addAttribute("matricule", matricule);
        return "redirect:/modifier";

    }

    @RequestMapping (value = "/modifier" )
     public String modifiert(@ModelAttribute("matricule") String matricule, Model model){
        Etudiant etudiant1 = etudiants.stream().filter(etudiant -> etudiant.getMatricule().equals(matricule)).collect(Collectors.toList()).get(0);
        model.addAttribute("etudiant", etudiant1);
        return "FormeModify";
    }







    @RequestMapping("/saveNewEtudiant")

    public String saveNewEtudiant( Etudiant etudiante) {

        for (Etudiant etudiant1: etudiants){
            if(etudiant1.getMatricule().equals(etudiante.getMatricule())){
                etudiant1.setNom(etudiante.getNom());
                etudiant1.setEmail(etudiante.getEmail());
                etudiant1.setNumero(etudiante.getNumero());
            }

        }
        return "redirect:/etudiants";
    }


    @RequestMapping(value = "/saveEtudiant")
    public String saveEtudiant(Etudiant etudiant) {
        etudiants.add(etudiant);
        return "redirect:/etudiants";
    }

    @RequestMapping("/etudiants")
    public String showEtudiants(Model model) {
       
        model.addAttribute("Etudiants", etudiants);
        return "Etudiants";
    }
}
