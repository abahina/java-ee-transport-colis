package Entity;

import Exception.ValidationException;
import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Cette classe représente un memebre de Carcel
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
    @Column(nullable = false, length = 30)
    private String email;
    private String telephone;
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "addresse_cle", nullable = true)
    private Adresse adresseperso;
    @Column(name = "date_of_birth")
    @Temporal(TemporalType.DATE)
    private Date datedenaissance;

    // ======================================
    // =            Constructeurs           =
    // ======================================
    public Membre() {
    }

    public Membre(String prenom, String nom) {
        this.prenom = prenom;
        this.nom = nom;
    }

    // ======================================
    // =     Methodes Lifecycle Callback    =
    // ======================================
    @PrePersist
    @PreUpdate
    private void donneesValides() {
        if (prenom == null || "".equals(prenom))
            throw new ValidationException("Prenom invalide");
        if (nom == null || "".equals(nom))
            throw new ValidationException("Nom invalide");
        if (identifiant == null || "".equals(identifiant))
            throw new ValidationException("Identifiant invalide");
        if (motdepasse == null || "".equals(motdepasse))
            throw new ValidationException("Mot de passe invalide");
    }

    // ======================================
    // =          Methodes publiques        =
    // ======================================

    /**
     * verifie que le mdp correspond a l'utilisateur
     *
     * @param mdp
     * @throws ValidationException levée si le mot de passe est vide ou different
     *                             de celui stocke dans la BD
     */
    public void mdpCorrespond(String mdp) {
        if (mdp == null || "".equals(mdp))
            throw new RuntimeException("Mot de passe invalide");

        // Le mdp saisi par le membre n'est pas present dans la BD
        if (!mdp.equals(motdepasse))
            throw new RuntimeException("Les mots de passe ne correspondent pas");
    }

    // ======================================
    // =             Accesseurs             = 
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

	public Date getDatedenaissance() {
		return datedenaissance;
	}

	public void setDatedenaissance(Date datedenaissance) {
		this.datedenaissance = datedenaissance;
	}
	
}

