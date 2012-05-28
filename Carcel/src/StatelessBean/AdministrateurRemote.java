package StatelessBean;

import Entity.Adresse;
import Entity.Membre;
import javax.ejb.Remote;
import java.util.List;

@Remote
public interface AdministrateurRemote {

	Membre creerMembre(Membre membre, Adresse adresseperso);
    Membre trouverMembre(Long membreId);
    void supprimerMembre(Membre membre);
    Membre majMembre(Membre membre, Adresse adresseperso);
    List<Membre> trouverMembres();
    
}