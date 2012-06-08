package Entity;

import java.io.Serializable;
import javax.persistence.*;

/**
 * Cette classe represente une adresse.
 *
 */

@Entity
@Table(name = "table_adresse")
public class Adresse implements Serializable {

	private static final long serialVersionUID = 1L;
	
	// ======================================
    // =             Attributs              =
    // ======================================
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(nullable = false)
    private String adresse1;
    private String adresse2;
    @Column(nullable = false, length = 100)
    private String ville;
    @Column(name = "code_postal", nullable = false, length = 10)
    private String codepostal;
    @Column(nullable = false, length = 50)
    private String pays;

    // ======================================
    // =            Constructeurs           =
    // ======================================
    public Adresse() {
    }

    public Adresse(String adresse1, String ville, String codepostal, String pays) {
        this.adresse1 = adresse1;
        this.ville = ville;
        this.codepostal = codepostal;
        this.pays = pays;
    }

    public String donneesValides() {
    	String erreur="";
        if (adresse1.isEmpty())
            erreur=" Adresse invalide,";
        if (ville.isEmpty())
        	erreur=erreur+" Ville invalide,";
        if (codepostal.isEmpty())
        	erreur=erreur+" Code postal invalide,";
        if (pays.isEmpty())
        	erreur=erreur+" Pays invalide,";
        return erreur;
    }

    // ======================================
    // =        Accesseurs et Getters       =
    // ======================================

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getAdresse1() {
		return adresse1;
	}

	public void setAdresse1(String adresse1) {
		this.adresse1 = adresse1;
	}

	public String getAdresse2() {
		return adresse2;
	}

	public void setAdresse2(String adresse2) {
		this.adresse2 = adresse2;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public String getCodepostal() {
		return codepostal;
	}

	public void setCodepostal(String codepostal) {
		this.codepostal = codepostal;
	}

	public String getPays() {
		return pays;
	}

	public void setPays(String pays) {
		this.pays = pays;
	}

}

