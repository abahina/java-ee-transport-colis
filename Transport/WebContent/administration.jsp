<%@page import="Controleur.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//Dtd HTML 4.01 transitional//EN" "http://www.w3.org/tr/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Connexion</title>
		<link rel="stylesheet" href="template.css" />
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
				<h3>Connexion</h3>
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
					<table cellSpacing=0 cellPadding=20 width="100%" border=1>
						<tr>
							<td vAlign=top>
								<table cellSpacing=0 cellPadding=5 border=0>
									<tr>
										<td align="center" colSpan=2><B>Entrez l'identifiant du membre à supprimer</B></td>
									</tr>
										<% 
										Object e = request.getAttribute("erreur");
										Boolean ok = (e!=null);
										String erreur = "";
										if (ok) {
											erreur = (String) e;
										%>				
										<p><h4> <%= erreur %> </h4></p>
										<% } %>
									<tr>
										<td align="right"><B>Identifiant :</B></td>
										<td>
											<input name="identifiant" type="text"/>
										</td>
									</tr>
										<td align="center" colSpan=2>
											<input type="submit" name="formulaire" value="Supprimer definitivement"/>
										</td> 
									</tr>
								</table>
							</td>
							<td vAlign=top>
								<table cellSpacing=0 cellPadding=5 border=0>
									<tr>
										<td align="center" colSpan=2><B>Afficher la liste des membres</B></td>
									</tr>
									<tr>
										<td align="center" colSpan=2>
											<input type="submit" name="formulaire" value="Afficher"/>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					<p><input type="submit" name="formulaire" value="Se deconnecter"/></p>
				</form>
			</section>
			
			<footer>
				Tout droit réservé. 2012.<br />
				The team xD
			</footer>
			
		</div>
	</body>
</html>