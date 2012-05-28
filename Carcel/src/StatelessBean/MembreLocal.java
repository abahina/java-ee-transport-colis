package StatelessBean;

import Entity.Adresse;
import Entity.Membre;
import javax.ejb.Local;

@Local
public interface MembreLocal {

    Membre authentifier(String identifiant, String motdepasse);
    Membre creerMembre(Membre membre, Adresse adresseperso);
    Membre trouverMembre(Long membreId);
    Membre majMembre(Membre membre, Adresse adresseperso);

}