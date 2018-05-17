package jpa;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "rv")
public class Rv implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Long id;

    @Basic(optional = false)
    @NotNull
    @Column(name = "JOUR")
    @Temporal(TemporalType.DATE)
    private Date jour;

    @JoinColumn(name = "ID_CRENEAUX" , referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private Creneaux creneaux;

    @JoinColumn(name = "ID_UTILISATEUR", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private Utilisateur utilisateur;

    public Rv() {
    }

    public Rv(Long id) {
        this.id = id;
    }

    public Rv(Long id, Date jour) {
        this.id = id;
        this.jour = jour;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getJour() {
        return jour;
    }

    public void setJour(Date jour) {
        this.jour = jour;
    }

    public Utilisateur getUtilisateur() {
        return utilisateur;
    }

    public void setUtilisateur(Utilisateur utilisateur) {
        this.utilisateur = utilisateur;
    }

    public Creneaux getCreneaux() {
        return creneaux;
    }

    public void setCreneaux(Creneaux creneaux) {
        this.creneaux = creneaux;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Rv)) {
            return false;
        }
        Rv other = (Rv) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return String.format("Rv[%s, %s, %s]", id, creneaux, utilisateur);
    }
}