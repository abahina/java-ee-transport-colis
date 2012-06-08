<%@page import="Controleur.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="template.css" />
		<title>Accueil</title>
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
				<input type="submit" value="S'identifier ou s'inscrire" onclick="self.location.href='identification.jsp'">
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
				Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec sagittis massa. Nulla facilisi. Cras id arcu lorem, et semper purus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis vel enim mi, in lobortis sem. Vestibulum luctus elit eu libero ultrices id fermentum sem sagittis. Nulla imperdiet mauris sed sapien dignissim id aliquam est aliquam. Maecenas non odio ipsum, a elementum nisi. Mauris non erat eu erat placerat convallis. Mauris in pretium urna. Cras laoreet molestie odio, consequat consequat velit commodo eu. Integer vitae lectus ac nunc posuere pellentesque non at eros. Suspendisse non lectus lorem.
				Vivamus sed libero nec mauris pulvinar facilisis ut non sem. Quisque mollis ullamcorper diam vel faucibus. Vestibulum sollicitudin facilisis feugiat. Nulla euismod sodales hendrerit. Donec quis orci arcu. Vivamus fermentum magna a erat ullamcorper dignissim pretium nunc aliquam. Aenean pulvinar condimentum enim a dignissim. Vivamus sit amet lectus at ante adipiscing adipiscing eget vitae felis. In at fringilla est. Cras id velit ut magna rutrum commodo. Etiam ut scelerisque purus. Duis risus elit, venenatis vel rutrum in, imperdiet in quam. Sed vestibulum, libero ut bibendum consectetur, eros ipsum ultrices nisl, in rutrum diam augue non tortor. Fusce nec massa et risus dapibus aliquam vitae nec diam.
				Phasellus ligula massa, congue ac vulputate non, dignissim at augue. Sed auctor fringilla quam quis porttitor. Praesent vitae dignissim magna. Pellentesque quis sem purus, vel elementum mi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Maecenas consectetur euismod urna. In hac habitasse platea dictumst. Quisque tincidunt porttitor vestibulum. Ut iaculis, lacus at molestie lacinia, ipsum mi adipiscing ligula, vel mollis sem risus eu lectus. Nunc elit quam, rutrum ut dignissim sit amet, egestas at sem.
			</section>
			
			<footer>
				Tout droit réservé. 2012.<br />
				The team xD
			</footer>
			
		</div>
	</body>
</html>