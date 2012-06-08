<%@page import="Entity.Membre"%>
<%@page import="java.util.ArrayList"%>
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
				<p style="text-align:center"><h3>Liste des membres</h3></p>
				<form action="/Transport/Controleur" method="get">
					<table cellSpacing=5 cellPadding=5 border=0>
						<% 
						ArrayList<Membre> liste = (ArrayList<Membre>) request.getAttribute("liste");
						%>		
						<tr>
							<td align="center"><h4>Identifiant</h4></td>
							<td align="center"><h4>Nom</h4></td>
							<td align="center"><h4>Prenom</h4></td>
						</tr>
						<tr>
							<td align="center">|------------------------------|</td>
							<td align="center">|------------------------------|</td>
							<td align="center">|------------------------------|</td>
						</tr>
						<%
						for (int i=0; i<liste.size(); i++) {
						%>
							<tr>
								<td align="left"> <%= liste.get(i).getIdentifiant() %> </td>
								<td align="left"> <%= liste.get(i).getNom() %> </td>
								<td align="left"> <%= liste.get(i).getPrenom() %> </td>
							</tr>
						<% } %>
					</table>
				</form>
				<p><input type = "submit" value = "Retour a la page d'administration" onclick="self.location.href='administration.jsp'"></p>
			</section>
			
			<footer>
				Tout droit réservé. 2012.<br />
				The team xD
			</footer>
			
		</div>
	</body>
</html>