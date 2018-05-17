package com.sdzee.entities;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

@Entity
public class Utilisateur {

    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY )
    private Long      id;
    @NotNull( message = "Veuillez saisir une adresse email" )
    private String    email;
    @Column( name = "mot_de_passe" )
    @NotNull( message = "Veuillez saisir un mot de passe" )
    private String    motDePasse;
    @NotNull( message = "Veuillez saisir un nom d'utilisateur" )
    private String    nom;
    @Column( name = "date_inscription" )
    private Timestamp dateInscription;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMotDePasse() {
        return motDePasse;
    }

    public void setMotDePasse(String motDePasse) {
        this.motDePasse = motDePasse;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public Timestamp getDateInscription() {
        return dateInscription;
    }

    public void setDateInscription(Timestamp dateInscription) {
        this.dateInscription = dateInscription;
    }
}