package com.panchalprogrammingacademy;


import Beans.Etudiant;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;


@Controller
public class EtudiantController {

    private List<Etudiant> etudiants = new ArrayList<>();

    @RequestMapping (value = "/" ,method = RequestMethod.GET)
    public String showEtudiantForm(Model model) {
        model.addAttribute("Etudiant", new Etudiant());
        return "Etudiant";
    }

    @RequestMapping(value = "/saveEtudiant",method = RequestMethod.POST)
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
