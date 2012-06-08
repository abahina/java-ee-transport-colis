<%@page import="Controleur.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Modification du compte</title>
		<link rel="stylesheet" type="text/css" href="template.css"/>
	</head>

	<body>
		<div id="bloc_page">
			<header>
				<div>
					<a href="accueil.html"><img src="entete.jpg" width=125 height=125 id="img_entete"></a>
				</div>
				<div id="titre_principal">
					<h1>Covoiturage colis</h1>
					<h2>Le moyen naturel pour transporter ton colis</h2>
				</div>
			</header>

			<nav>
				<h3>Modifier votre compte</h3>
			</nav>
			
			<aside>
				<section>
					<h3>Trouver votre transport</h3>
					Ville de départ :<br />
					<input type = 'text' name = 'villedepart' value="ville de départ"><br />
					Ville de d'arrivée :<br />
					<input type = 'text' name = 'villearrive' value="ville d'arrivée"><br />
					Date : <br /> 
					<input type = 'text' name = 'date' value="date"><br />
					Poids du colis 
					<select>
						<option selected>poids</option>
						<option>0-2Kg</option>
						<option>2-5kg</option>
						<option>5-10kg</option>
						<option>10-20kg</option>
						<option>20-50kg</option>
						<option>+ de 50kg</option>
					</select>
					<br />Taille du colis :  
					largeur
					<select>
						<option selected>largeur</option>
						<option>0-10</option>
						<option>10-20</option>
						<option>20-30</option>
						<option>30-50</option>
						<option>50-75</option>
						<option>75-100</option>
						<option>+ de 100</option>
					</select> cm ;
					<br />Longueur
					<select>
						<option selected>largeur</option>
						<option>0-10</option>
						<option>10-20</option>
						<option>20-30</option>
						<option>30-50</option>
						<option>50-75</option>
						<option>75-100</option>
						<option>+ de 100</option>
					</select> cm ;
					<br />Hauteur
					<select>
						<option selected>hauteur</option>
						<option>0-10</option>
						<option>10-20</option>
						<option>20-30</option>
						<option>30-50</option>
						<option>50-75</option>
						<option>75-100</option>
						<option>+ de 100</option>
					</select> cm
				</section>
				
				<section id="search">
					<h3>Rechercher</h3>
					<input type = "submit" value = "Rechercher" onclick="self.location.href='recherche.html'">
				</section>
				
				<section id="publish">
					<h3>Publiez une annonce</h3>
					<input type = "submit" value = "Publier" onclick="self.location.href='publication.html'">
				</section>
			</aside>
			
			<section id="corps">
				<form action="/Transport/Controleur" method="get">
					<div class="zoneEditor">
						<h3>Informations personnelles</h3>
						<% 
						Object e = request.getAttribute("erreur");
						Boolean ok = (e!=null);
						String erreur = "";
						if (ok) {
							erreur = (String) e;
						%>				
						<p> <%= erreur %> </p>
						<h3>Veuillez saisir de nouveau les champs suivants : </h3>		
						<% } %>
						<table cellSpacing=0 cellPadding=5 border=0>
							<tr>
								<td align="left"><B>*Identifiant:</B></td>
								<td>
									<input name="identifiant" type="text"/>
								</td>
							</tr>
							<tr>
								<td align="left"><B>*Mot de passe:</B></td>
								<td>
									<input name="mdp" type="password"/>
								 </td>
							</tr>
							<tr>
								<td align="left"><B>*Confirmer mot de passe:</B></td>
								<td>
									<input name="mdp2" type="password"/>
								 </td>
							</tr>
							<tr>
								<td align="left"><B>*Prénom:</B></td>
								<td>
									<input name="prenom" type="text"/>
								 </td>
							</tr>
							<tr>
								<td align="left"><B>*Nom:</B></td>
								<td>
									<input name="nom" type="text"/>
								 </td>
							</tr>
							<tr>
							<td align="left"><B>*Email:</B></td>
								<td>
									<input name="email" type="text"/>
								 </td>
							</tr>
							<tr>
								<td align="left"><B>Téléphone:</B></td>
								<td>
									<input name="telephone" type="text"/>
								 </td>
							</tr>
							<tr>
								<td align="left"><B>*Date de naissance (jj.mm.aaaa):</B></td>
								<td>
									<input name="dateDeNaissance" type="text"/>
								 </td>
							</tr>                    
						</table>                                  
					</div>

					<div class="zoneEditor">
						<h3>Adresse</h3>

						<table cellSpacing=0 cellPadding=5 border=0>
							<tr>
								<td align="left"><B>*Adresse1:</B></td>
								<td>
									<input name="adresse1" type="text"/>
								</td>
							</tr>
							<tr>
								<td align="left"><B>Adresse2:</B></td>
								<td>
									<input name="adresse2" type="text"/>
								 </td>
							</tr>
							<tr>
								<td align="left"><B>*Ville:</B></td>
								<td>
									<input name="ville" type="text"/>
								 </td>
							</tr>
							<tr>
							<tr>
								<td align="left"><B>*Code postal:</B></td>
								<td>
									<input name="codePostal"type="text"/>
								 </td>
							</tr>
							<tr>
								<td align="left"><B>*Pays:</B></td>
								<td>
									<input name="pays" type="text"/>
								 </td>
							</tr>                    
						</table>                      
					</div>

					<div class="zoneButton">
						<input name="formulaire" type="submit" value="Confirmer"/>
					</div>
				</form>
			</section>
			
			<footer>
				Tout droit réservé. 2012.<br />
				The team xD
			</footer>
			
		</div>
	</body>
</html>