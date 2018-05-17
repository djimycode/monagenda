package jpa;

import javax.persistence.*;
import java.io.Serializable;
import javax.validation.constraints.NotNull;


@Entity
@Table(name = "creneaux")
public class Creneaux implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Long id;

    @Basic(optional = false)
    @Column(name = "MDEBUT")
    private int mdebut;

    @Basic(optional = false)
    @NotNull
    @Column(name = "HFIN")
    private int hfin;

    @Basic(optional = false)
    @NotNull
    @Column(name = "HDEBUT")
    private int hdebut;

    @Basic(optional = false)
    @NotNull
    @Column(name = "MFIN")
    private int mfin;

    @JoinColumn(name = "ID_INVITE", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private Invite invite;

    public Creneaux() {
    }

    public Creneaux(Long id) {
        this.id = id;
    }

    public Creneaux(Long id, int mdebut, int hfin, int hdebut, int mfin) {
        this.id = id;
        this.mdebut = mdebut;
        this.hfin = hfin;
        this.hdebut = hdebut;
        this.mfin = mfin;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getMdebut() {
        return mdebut;
    }

    public void setMdebut(int mdebut) {
        this.mdebut = mdebut;
    }

    public int getHfin() {
        return hfin;
    }

    public void setHfin(int hfin) {
        this.hfin = hfin;
    }

    public int getHdebut() {
        return hdebut;
    }

    public void setHdebut(int hdebut) {
        this.hdebut = hdebut;
    }

    public int getMfin() {
        return mfin;
    }

    public void setMfin(int mfin) {
        this.mfin = mfin;
    }

    public Invite getInvite() {
        return invite;
    }

    public void setInvite(Invite invite) {
        this.invite = invite;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Creneaux)) {
            return false;
        }
        Creneaux other = (Creneaux) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return String.format("Creneaux [%s, %s, %s:%s, %s:%s,%s]", id, hdebut, mdebut, hfin, mfin, invite);
    }
}