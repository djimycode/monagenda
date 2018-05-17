package jpa;

import javax.persistence.*;
import java.io.Serializable;


@Entity
@Table(name = "invite")
public class Invite extends Personne implements Serializable {
    private static final long serialVersionUID = 1L;

    //constructeur
    public Invite () {
        super();
    }

    public Invite(Long id) {
        super(id);
    }

    public Invite(Long id, String nom, String prenom, String email, String motDePasse) {
        super(id, nom, prenom, email, motDePasse);
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (getId() != null ? getId().hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Invite)) {
            return false;
        }
        Invite other = (Invite) object;
        if ((this.getId() == null && other.getId() != null) || (this.getId() != null && !this.getId().equals(other.getId()))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return String.format("Invite[%s,%s,%s,%s,%s]", getId(), getNom(), getPrenom(), getEmail(), getMotDePasse());
    }

}