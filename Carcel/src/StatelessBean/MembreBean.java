package StatelessBean;

import Entity.Adresse;
import Entity.Membre;
import Exception.ValidationException;
import javax.ejb.Stateless;
import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@TransactionAttribute(value = TransactionAttributeType.REQUIRED)
@Stateless(name = "MembreSB", mappedName = "ejb/stateless/Membre")
public class MembreBean implements AdministrateurRemote, MembreLocal {

    @PersistenceContext(unitName = "carcelPersistance")
    private EntityManager em;

    public Membre authentifier(String identifiant, String motdepasse) {
       
    	// On s'assure de la validite des parametres
        if (identifiant == null || "".equals(identifiant)) {
            throw new ValidationException("Identifiant invalide");
        }
        Query query;
        Membre membre;

        // On recherche l'objet a partir de son identifiant
        query = em.createQuery("SELECT m FROM Membre m WHERE m.identifiant=:identifiant");
        query.setParameter("identifiant", identifiant);
        membre = (Membre) query.getSingleResult();

        // On verifie qu'il s'agit du bon mdp
        if (membre != null) {
            membre.mdpCorrespond(motdepasse);
        }
        return membre;
    }

    public Membre creerMembre(Membre membre, Adresse adresseperso) {

        // On s'assure de la validite des parametres
        if (membre == null) {
            throw new ValidationException("L'objet membre est null");
        }
        membre.setAdresseperso(adresseperso);
        em.persist(membre);

        return membre;
    }

    public Membre trouverMembre(Long membreId) {
       
        // On s'assure de la validite des parametres
        if (membreId == null) {
            throw new ValidationException("Id invalide");
        }
        Membre membre;
        // On recherche l'objet ˆ partir de son Id
        membre = em.find(Membre.class, membreId);
        
        return membre;
    }
    
    public Membre majMembre(Membre membre, Adresse adresseperso) {
        
        // On s'assure de la validite des parametres
        if (membre == null) {
            throw new ValidationException("L'objet membre est null");
        }
        membre.setAdresseperso(adresseperso);
        // On modifie l'objet de la base de donnees
        em.merge(membre);

        return membre;
    }

    public void supprimerMembre(Membre membre) {

        // On s'assure de la validite des parametres
        if (membre == null) {
            throw new ValidationException("L'objet membre est null");
        }
        // On supprime l'objet de la base de donnees
        em.remove(em.merge(membre));
    }

    public List<Membre> trouverMembres() {
        Query query;
        List<Membre> membres;

        // On modifie l'objet de la base de donnees
        query = em.createQuery("SELECT m FROM Membre m");
        membres = query.getResultList();
        
        return membres;
    }

}
