<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<link rel="stylesheet" type="text/css" href="template.css"/>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Information du compte</title>
</head>

<body>

       <%--HEADER--%>
    <div id="header">
        <div class="panel">
       		<h2>Site de transport de colis</h2>
        	<!--inserer ce que l'on venut ds la barre du haut-->
        </div>
    </div>

        <%--NAVIGATION--%>
    <div id="sidebar">
        <div class="panel">
            <!--inserer ce que l'on veut ds la barre de navigation-->
        </div>
    </div>
    
        <%--BODY--%>
    <div id="body">
        <div class="panel">

            <h2>Informations de votre compte</h2>

            <form>

                <div class="zoneEditor">
                    <h3>Informations personnelles</h3>
                    
                    <table cellSpacing=0 cellPadding=5 border=0>
                    	<tr>
                        	<td align="left"><B>*Identifiant:</B></td>
                            <td>
                            	<input type="text"/>
                            </td>
                        </tr>
                        <tr>
                        	<td align="left"><B>*Prénom:</B></td>
                            <td>
                            	<input type="text"/>
                             </td>
                        </tr>
                        <tr>
                        	<td align="left"><B>*Nom:</B></td>
                            <td>
                            	<input type="text"/>
                             </td>
                        </tr>
                        <tr>
                        <td align="left"><B>*Email:</B></td>
                            <td>
                            	<input type="text"/>
                             </td>
                        </tr>
                        <tr>
                        	<td align="left"><B>Téléphone:</B></td>
                            <td>
                            	<input type="text"/>
                             </td>
                        </tr>
                      	<tr>
                        	<td align="left"><B>*Date de naissance (jj.mm.aaaa):</B></td>
                            <td>
                            	<input type="text"/>
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
                            	<input type="text"/>
                            </td>
                        </tr>
                        <tr>
                        	<td align="left"><B>Adresse2:</B></td>
                            <td>
                            	<input type="text"/>
                             </td>
                        </tr>
                        <tr>
                        	<td align="left"><B>*Ville:</B></td>
                            <td>
                            	<input type="text"/>
                             </td>
                        </tr>
                        <tr>
                        <td align="left"><B>*Email:</B></td>
                            <td>
                            	<input type="text"/>
                             </td>
                        </tr>
                        <tr>
                        	<td align="left"><B>*Code postal:</B></td>
                            <td>
                            	<input type="text"/>
                             </td>
                        </tr>
                      	<tr>
                        	<td align="left"><B>*Pays:</B></td>
                            <td>
                            	<input type="text"/>
                             </td>
                        </tr>                    
                	</table>                      
                </div>

                <div class="zoneButton">
                    <input type="submit" value="Confirmer"/>
                </div>
            </form>

        </div>
    </div>

		<%--FOOTER--%>
    <div id="footer">
        <div class="panel">
            <!--inserer ce que l'on venut ds la barre du bas-->
        </div>
    </div>

</body>
</html>
