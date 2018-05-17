package jpa;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "utilisateur")
public class Utilisateur extends Personne implements Serializable {
    private static final long serialVersionUID = 1L;

    public Utilisateur() {
        super();
    }

    public Utilisateur(Long id){
        super(id);
    }

    public Utilisateur (Long id, String nom, String prenom, String email, String motDePasse) {
        super(id, nom, prenom, email, motDePasse);
    }

    @Override
    public int hashCode() {
        Long id=getId();
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Utilisateur)) {
            return false;
        }
        Utilisateur other = (Utilisateur) object;
        if ((this.getId() == null && other.getId() != null) || (this.getId() != null && !this.getNom().equals(other.getId()))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return String.format("Client[%s,%s,%s,%s]", getId(), getNom(), getPrenom(), getEmail(), getMotDePasse());
    }

}