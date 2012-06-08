package StatelessBean;

import java.util.ArrayList;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import Entity.Adresse;
import Entity.Membre;

@Stateless
public class MembreBean {

    @PersistenceContext(unitName = "Transport")
    private EntityManager em;
    
    public boolean creerMembre(Membre membre, Adresse adresse) {
    	if (membre == null) {
            return false;
        }
        membre.setAdresseperso(adresse);
        em.persist(membre);
        return true;
    }
    
    public Membre authentifier(String identifiant, String motdepasse) {
    	String erreur="";
        Query query;
        Membre membre=null;
        // On recherche le membre a partir de son identifiant
        if (identifiant.isEmpty() || motdepasse.isEmpty()) {
        	membre= null;
        } else {
	        query = em.createQuery("SELECT m FROM Membre m WHERE m.identifiant=:identifiant");
	        query.setParameter("identifiant", identifiant);
	        try {
	        	membre = (Membre) query.getSingleResult(); 
	        } catch (Exception e) {
	        	membre=null;
	        }   
	        // On verifie qu'il s'agit du bon mdp
	        if (membre != null) {
	        	erreur=membre.mdpCorrespond(motdepasse);
	        	if(!erreur.isEmpty()) {
	        		membre=null;
	        	}
	        }
        }
        return membre;
    }
    
    public boolean supprimerMembre(Membre membre) {
        if (membre == null) {
            return false;
        }
        // On supprime le membre (et son adresse) de la base de donnees
        em.remove(em.merge(membre));
        return true;
    }
        
    // trouver un membre à partir de son identifiant
    public Membre chercherMembre(String identifiant) {
    	Membre membre=null;
        Query query;
        query = em.createQuery("SELECT m FROM Membre m WHERE m.identifiant=:identifiant");
        query.setParameter("identifiant", identifiant);
        try {
        	membre = (Membre) query.getSingleResult(); 
        } catch (Exception e) {
        	membre=null;
        }
	    return membre;
    }
    
    // extraire la liste des membres de la BD
    public ArrayList<Membre> listeMembre() {
        Query query;
        ArrayList<Membre> membres=null;
        // On modifie l'objet de la base de donnees
        query = em.createQuery("SELECT m FROM Membre m");
        try {
        	membres = (ArrayList<Membre>) query.getResultList();
        } catch (Exception e) {
        	membres=null;
        }
        return membres;
    }
    
}
