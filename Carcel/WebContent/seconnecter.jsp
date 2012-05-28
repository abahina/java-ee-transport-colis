<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//Dtd HTML 4.01 transitional//EN" "http://www.w3.org/tr/html4/loose.dtd">
<html>

<link rel="stylesheet" type="text/css" href="template.css"/>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Connexion</title>
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
            <!--inserer ce que l'on venut ds la barre de navigation-->
        </div>
    </div>

        <%--BODY--%>
    <div id="body">
        <div class="panel">

            <h2>Connexion</h2>

            <p><b>Etes vous déjà inscrit ?</b></p>

            <table cellSpacing=0 cellPadding=20 width="100%" border=1>
                <tr>
                    <td vAlign=top>
                        <form>
                            <table cellSpacing=0 cellPadding=5 border=0>
                                <tr>
                                    <td align="center" colSpan=2><B>OUI.</B></td>
                                </tr>
                                <tr>
                                    <td align="right"><B>Identifiant:</B></td>
                                    <td>
                                        <input type="text"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right"><B>Mot de passe:</B></td>
                                    <td>
                                         <input type="password"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colSpan=2>
                                        <input type="submit" value="se connnecter"/>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </td>
                    <td vAlign=top>
                        <form>
                            <table cellSpacing=0 cellPadding=5 border=0>
                                <tr>
                                    <td align="center" colSpan=2><B>Non. Je souhaite créer un nouveau compte.</B></td>
                                </tr>
                                <tr>
                                    <td align="right"><B>Login:</B></td>
                                    <td>
                                         <input type="text"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right"><B>Identifiant:</B></td>
                                    <td>
                                         <input type="password"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right"><B>Confirmez mot de passe:</B></td>
                                    <td>
                                         <input type="password"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colSpan=2>
										<input type="submit" value="Créer"/>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </td>
                </tr>
            </table>
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
