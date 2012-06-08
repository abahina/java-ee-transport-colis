package Entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Cette classe represente un membre du site
 *
 */

@Entity
@Table(name = "table_membre")
public class Membre implements Serializable{

	private static final long serialVersionUID = 1L;
	
	// ======================================
    // =             Attributs              = 
    // ======================================
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(unique = true, nullable = false, length = 8)
    private String identifiant;
    @Column(nullable = false, length = 8)
    private String motdepasse;
    @Column(nullable = false, length = 30)
    private String prenom;
    @Column(nullable = false, length = 30)
    private String nom;
    @Column(nullable = false, length = 50)
    private String questionSecrete;
	@Column(nullable = false, length = 30)
    private String reponse;
    @Column(nullable = false, length = 30)
    private String email;
    private String telephone;
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "adresse_cle", nullable = true)
    private Adresse adresseperso;
    @Column(name = "date_de_naissaince")
    private String datedenaissance;

    // ======================================
    // =            Constructeurs           =
    // ======================================
    public Membre() {
    }

    public Membre(String prenom, String nom) {
        this.prenom = prenom;
        this.nom = nom;
    }

    public String donneesValides() {
    	String erreur="";
        if (identifiant.isEmpty())
            erreur=" Identifiant invalide,";
        if (motdepasse.isEmpty())
        	erreur=erreur+" Mot de passe invalide,";
        if (prenom.isEmpty())
        	erreur=erreur+" Prenom invalide,";
        if (nom.isEmpty())
        	erreur=erreur+" Nom invalide,";
        if (email.isEmpty())
        	erreur=erreur+" Email invalide,";
        if (datedenaissance.isEmpty())
        	erreur=erreur+" Date de naissance invalide,";
        if (questionSecrete.isEmpty())
        	erreur=erreur+" Question secrete invalide,";
        if (reponse.isEmpty())
        	erreur=erreur+" Reponse invalide,";
        return erreur;
    }

    public String mdpCorrespond(String mdp) {
        String erreur = "";
    	if (mdp.isEmpty())
    		erreur=" Confirmation mot de passe invalide,";
        if (!mdp.equals(motdepasse))
        	erreur=erreur+" Les deux mots de passe ne correspondent pas,";
        return erreur;
    }

    // ======================================
    // =       Accesseurs et Getters        = 
    // ======================================
    
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getIdentifiant() {
		return identifiant;
	}

	public void setIdentifiant(String identifiant) {
		this.identifiant = identifiant;
	}

	public String getMotdepasse() {
		return motdepasse;
	}

	public void setMotdepasse(String motdepasse) {
		this.motdepasse = motdepasse;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public Adresse getAdresseperso() {
		return adresseperso;
	}

	public void setAdresseperso(Adresse adresseperso) {
		this.adresseperso = adresseperso;
	}

	public String getDatedenaissance() {
		return datedenaissance;
	}

	public void setDatedenaissance(String datedenaissance) {
		this.datedenaissance = datedenaissance;
	}
	public String getQuestionSecrete() {
		return questionSecrete;
	}

	public void setQuestionSecrete(String questionSecrete) {
		this.questionSecrete = questionSecrete;
	}

	public String getReponse() {
		return reponse;
	}

	public void setReponse(String reponse) {
		this.reponse = reponse;
	}
	
}

