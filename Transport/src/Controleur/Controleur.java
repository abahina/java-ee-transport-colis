package Controleur;

import java.io.IOException;
import java.util.ArrayList;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import Entity.Adresse;
import Entity.Membre;
import StatelessBean.MembreBean;

/**
 * Servlet implementation class Controleur
 */
public class Controleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB
	private MembreBean mb;
	
	static Membre utilisateur=null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controleur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String formulaire=request.getParameter("formulaire");
		String envoyerA=null;
		String erreur="";
		
		// action s'inscrire
		if (formulaire.equals("Creer")) {
			envoyerA="inscription.jsp";
		}
		
		// inscription
		else if(formulaire.equals("Confirmer")) {
			String identifiant=request.getParameter("identifiant");
			String mdp=request.getParameter("mdp");
			String mdp2=request.getParameter("mdp2");
			String prenom=request.getParameter("prenom");
			String nom=request.getParameter("nom");
			String email=request.getParameter("email");
			String telephone=request.getParameter("telephone");
			String dateDeNaissance=request.getParameter("dateDeNaissance");
			String question=request.getParameter("question");
			String reponse=request.getParameter("reponse");
			String adresse1=request.getParameter("adresse1");
			String adresse2=request.getParameter("adresse2");
			String ville=request.getParameter("ville");
			String codePostal=request.getParameter("codePostal");
			String pays=request.getParameter("pays");
			
			Membre membre = new Membre();
			Adresse adresse = new Adresse();
			
			membre.setIdentifiant(identifiant);
			membre.setMotdepasse(mdp);
			membre.setPrenom(prenom);
			membre.setNom(nom);
			membre.setEmail(email);
			membre.setTelephone(telephone);
			membre.setDatedenaissance(dateDeNaissance);
			membre.setQuestionSecrete(question);
			membre.setReponse(reponse);
			
			adresse.setAdresse1(adresse1);
			adresse.setAdresse2(adresse2);
			adresse.setVille(ville);
			adresse.setCodepostal(codePostal);
			adresse.setPays(pays);
			
			erreur=membre.donneesValides();
			erreur=erreur+membre.mdpCorrespond(mdp2);
			erreur=erreur+adresse.donneesValides();
			
			if (mb.chercherMembre(identifiant)!=null) {
				erreur="Identifiant déjà utilisé";
			}
			
			if(erreur.isEmpty()) {
				mb.creerMembre(membre, adresse);
				envoyerA="confirmationInscr.jsp";
			} else {
				request.setAttribute("erreur",erreur);
				envoyerA="inscription.jsp";
			}
		}
		
		// connexion de l'utilisateur
		else if (formulaire.equals("se connnecter")) {
			String identifiant=request.getParameter("identifiant");
			String mdp=request.getParameter("mdp");
			if (identifiant.equals("admin") && mdp.equals("admin")) {
				envoyerA="administration.jsp";
			} else {
				utilisateur=mb.authentifier(identifiant, mdp);
				if(utilisateur==null) {
					erreur="Identifiant ou mot de passe incorrect";
					request.setAttribute("erreur",erreur);
					envoyerA="identification.jsp";
				} else {
					envoyerA="accueilConnecte.jsp";
				}
			}
		}
				
		// visualisation des informations du compte
		else if (formulaire.equals("Mon compte")) {
			request.setAttribute("utilisateur",utilisateur);
			envoyerA="compte.jsp";
		}
		
		// demande de suppression du compte
		else if (formulaire.equals("Supprimer")) {
			envoyerA="confirmationSuppr.jsp";
		}
		
		// action suppression
		else if (formulaire.equals("Oui")) {
			boolean ok;
			ok=mb.supprimerMembre(utilisateur);
			if (ok) {
				utilisateur=null;
				envoyerA="accueil.jsp";
			} else {
				envoyerA="confirmationSuppr";
			}
		}
		
		// annulation suppression
		else if (formulaire.equals("Non")) {
			envoyerA="accueilConnecte.jsp";
		}
		
		// suppression d'un membre par l'administrateur
		else if (formulaire.equals("Supprimer definitivement")) {
			String identifiant = request.getParameter("identifiant");
			utilisateur = mb.chercherMembre(identifiant);
			if (utilisateur!=null) {
				mb.supprimerMembre(utilisateur);
				utilisateur=null;
				String msg="le membre '"+identifiant+ "' a ete supprime";
				request.setAttribute("erreur",msg);
				envoyerA="administration.jsp";
			} else {
				erreur = "Identifiant inconnu";
				request.setAttribute("erreur",erreur);
				envoyerA="administration.jsp";
			}
		}
		
		// retour a l'accueil en mode connecte
		else if (formulaire.equals("Retour a l'accueil")) {
			envoyerA="accueilConnecte.jsp";
		}
		
		// retour a l'accueil en mode non connecte
		else if (formulaire.equals("Se deconnecter") || formulaire.equals("Accueil")) {
			utilisateur=null;
			envoyerA="accueil.jsp";
		}
		
		// demande modification du compte
		else if (formulaire.equals("Modifier")) {
			envoyerA="confirmationModif.jsp";
		}
		
		// action modification
		else if (formulaire.equals("Oui, je confirme")) {
			boolean ok;
			ok=mb.supprimerMembre(utilisateur);
			if (ok) {
				utilisateur=null;
				envoyerA="modifierCompte.jsp";
			} else {
				envoyerA="accueilConnecte.jsp";
			}
		}
		
		// acces a la question secrete pour recuperer le mot de passe
		else if (formulaire.equals("Question")) {
			String identifiant = request.getParameter("identifiant");
			utilisateur = mb.chercherMembre(identifiant);
			if (utilisateur!=null) {
				String question=utilisateur.getQuestionSecrete();
				request.setAttribute("question",question);
				envoyerA="questionMdp.jsp";
			} else {
				erreur = "Identifiant inconnu";
				request.setAttribute("erreur",erreur);
				envoyerA="demandeIdentifiant.jsp";
			}
		}
		
		// recuperation du mot de passe par question secrete
		else if (formulaire.equals("Soumettre")) {
			String reponse=request.getParameter("reponse");
			if (reponse.equals(utilisateur.getReponse())) {
				String mdpasse=utilisateur.getMotdepasse();
				request.setAttribute("mdpasse",mdpasse);
				envoyerA="recuperationMdp.jsp";
			} else {
				erreur="Reponse invalide";
				request.setAttribute("erreur",erreur);
				envoyerA="questionMdp.jsp";
			}
		}
		
		// affichage de la liste des client pour l'administrateur
		else if (formulaire.equals("Afficher")) {
			ArrayList<Membre> liste = mb.listeMembre();
			if (liste!=null) {
				request.setAttribute("liste", liste);
				envoyerA="listeMembres.jsp";
			} else {
				erreur="la liste est vide";
				request.setAttribute("erreur", erreur);
				envoyerA="administration.jsp";
			}
			
		}
				
		request.getRequestDispatcher(envoyerA).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
