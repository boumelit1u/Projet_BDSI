<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	   <title>Page d'accueil </title>
	   <link type="text/css" rel="stylesheet" href="CSS/style.css" />
</head>

<header>
	  <div id="bandeau">
		<a href="http://www.telecomnancy.eu/" id="logoTN" class="logo-img"><img src="images/logoTN.png" alt= "Logo TELECOM Nancy" width="180" height="100"/></a>
		<h1 class="titre_page" style="position:absolute; top: 2%; left:33%">RELATIONS INTERNATIONALES</h1>
		<p id="connexion">
			Nom Pr�nom / D�connexion </p>
		
			
	</header>

<body>

 <div id="cote_gauche">
	 
		<div id="Menu" >
		<ul id = "Onglets">
   <li><a href="#" title="Accueil">Accueil</a></li>
   <li><a href="#" title="Partir � l'�tranger">Partir � l'�tranger</a>
   
   
   
               <ul>          
		              <li><a href="#">Pr�sentation</a></li>
                      <li><a href="#">Modalit�</a></li>
         
               </ul>
         
   </li>
   
  
   <li><a href="#" title="Stages r�alis�s">Stages r�alis�s</a></li>
   <li><a href="#" title="Doubles dipl�mes">Doubles dipl�mes</a></li>
   <li><a href="#" title="Universit�">Universit�</a></li>
   <li><a href="#" title="FAQ">FAQ</a></li>
   <li><a href="#" title="Contact">Contact</a></li>
  
             </ul>
			
			
	    </div>
		
		
		
		
		<div id="lien_res_sociaux">
				<a href="${university.facebook_link}" id="logo_fb"><img src="images/facebook.png" width="30" height="30"/></a>
				<a href="${university.twitter_link }" id="logo_tw"><img src="images/twitter.png" width="30" height="30"/></a>
				<a href="${university.linkedin_link }" id="logo_ln"><img src="images/linkedin.png" width="30" height="30"/></a>
		</div>
	</div>
	 
	 
       
    </body>

</html>