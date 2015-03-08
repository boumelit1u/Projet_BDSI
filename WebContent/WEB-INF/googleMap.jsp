<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Geocoding service</title>
    <link href='<%=request.getContextPath() %>/CSS/style.css' rel='stylesheet' type='text/css' />
    <style>
      html, body, #map-canvas {
        height: 100%;
        margin: 0px;
        padding: 0px
      }
      #panel {
        position: absolute;
        top: 5px;
        left: 50%;
        margin-left: -180px;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
    <script>
var geocoder;
var map;

var nbUniv = parseInt("${carte.nbUniv}", 0);
var nbStage = parseInt("${carte.nbStage}", 0);
var nbDD = parseInt("${carte.nbDD}", 0);
var univAdresses = new Array();

function initialize() {
  geocoder = new google.maps.Geocoder();
  var centreEurope = new google.maps.LatLng(46.779231, 6.659431);
  var mapOptions = {
    zoom: 6,
    center: centreEurope
	}
  map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

}


function displayUniversities() {
  //adresses qui seront g�olocalis�es par l'API
	  var address1 = "Poitiers";
	  var address2 = "Dunkerque";
	  var address3 = "Gu�ret";
	

//universit� 1
  geocoder.geocode( { 'address': address1}, function(results, status) {
      var marker1 = new google.maps.Marker({
          icon: 'http://maps.google.com/mapfiles/ms/icons/green-dot.png',
          map: map,
          position: results[0].geometry.location,
          title : "Universit� Polytechnique du Poitou"
      });
    var text1 = '<div id="content">'+
    '<div id="siteNotice">'+
    '</div>'+
    '<h1 id="firstHeading" class="firstHeading">Universit� du Poitou</h1>'+
    '<div id="bodyContent">'+
    '<p>L\'universit� du Poitou est super hypra cool, venez vite �tudiez l�-bas !!!!!!!'+
    '<p>En savoir plus :<a href="http://fr.wikipedia.org/wiki/Poitou">'+
          'http://fr.wikipedia.org/wiki/Poitou</a> '+    //je sais pas pourquoi si on enl�ve un des 2 liens �a marche plus...  A creuser si on veut faire plus propre...
          '</div>'+
          '</div>';
    var window1 = new google.maps.InfoWindow({
      content: text1
    });
      google.maps.event.addListener(marker1, 'click', function() {
        window1.open(map,marker1);
      });
    });

//universit� 2
  geocoder.geocode( { 'address': address2}, function(results, status) {
      var marker2 = new google.maps.Marker({
          icon: 'http://maps.google.com/mapfiles/ms/icons/green-dot.png',
          map: map,
          position: results[0].geometry.location,
          title : "Ecole sup�rieure du charbon et des mat�riaux combustibles"
      });
    var text2 = "Longue vie au charbon, aidez nous � en extraire encore un peu !";
    var window2 = new google.maps.InfoWindow({
      content: text2
    });
      google.maps.event.addListener(marker2, 'click', function() {
        window2.open(map,marker2);
      });
    });

//universit� 3
  geocoder.geocode( { 'address': address3}, function(results, status) {
      var marker3 = new google.maps.Marker({
          icon: 'http://maps.google.com/mapfiles/ms/icons/green-dot.png',
          map: map,
          position: results[0].geometry.location,
          title : "Universit� Polytechnique de Gu�ret"
      });
    var text3 = "You gonna enjoy the way of life in Gu�ret, for sure !";
    var window3 = new google.maps.InfoWindow({
      content: text3
    });
      google.maps.event.addListener(marker3, 'click', function() {
        window3.open(map,marker3);
      });
    });
}








function displayInternships() {
  var address1 = "Marseille";
  var address2 = "Grenoble";
  var address3 = "Strasbourg";
  var address4 = "Brest";

//stage 1
  geocoder.geocode( { 'address': address1}, function(results, status) {
      var marker1 = new google.maps.Marker({
          icon: 'http://maps.google.com/mapfiles/ms/icons/blue-dot.png',
          map: map,
          position: results[0].geometry.location,
          title : "poissonnerie des belles eaux"
      });
    var text1 = "il est frais mon poisson !";
    var window1 = new google.maps.InfoWindow({
      content: text1
    });
      google.maps.event.addListener(marker1, 'click', function() {
        window1.open(map,marker1);
      });
    });

//stage 2
  geocoder.geocode( { 'address': address2}, function(results, status) {
      var marker2 = new google.maps.Marker({
          icon: 'http://maps.google.com/mapfiles/ms/icons/blue-dot.png',
          map: map,
          position: results[0].geometry.location,
          title : "Nano technos Inc."
      });
    var text2 = "For the very good ones";
    var window2 = new google.maps.InfoWindow({
      content: text2
    });
      google.maps.event.addListener(marker2, 'click', function() {
        window2.open(map,marker2);
      });
    });

//stage 3
  geocoder.geocode( { 'address': address3}, function(results, status) {
      var marker3 = new google.maps.Marker({
          icon: 'http://maps.google.com/mapfiles/ms/icons/blue-dot.png',
          map: map,
          position: results[0].geometry.location,
          title : "Big Company"
      });
    var text3 = "We are big, help us to be bigger !";
    var window3 = new google.maps.InfoWindow({
      content: text3
    });
      google.maps.event.addListener(marker3, 'click', function() {
        window3.open(map,marker3);
      });
    });
//stage 4
  geocoder.geocode( { 'address': address4}, function(results, status) {
      var marker4 = new google.maps.Marker({
          icon: 'http://maps.google.com/mapfiles/ms/icons/blue-dot.png',
          map: map,
          position: results[0].geometry.location,
          title : "Confiserie des bons bonbons"
      });
    var text4 = "On fait des bons bonbons, c'est sympa non ?  =)";
    var window4 = new google.maps.InfoWindow({
      content: text4
    });
      google.maps.event.addListener(marker4, 'click', function() {
        window4.open(map,marker4);
      });
    });
}







function displayDoubleDiploma() {
  var address1 = "Paris";

//Double dipl�me 1
  geocoder.geocode( { 'address': address1}, function(results, status) {
      var marker1 = new google.maps.Marker({
          map: map,
          position: results[0].geometry.location,
          title : "Telecom Management"
      });
    var text1 = "Pour ceux qui aiment le management";
    var window1 = new google.maps.InfoWindow({
      content: text1
    });
      google.maps.event.addListener(marker1, 'click', function() {
        window1.open(map,marker1);
      });
    });
}















google.maps.event.addDomListener(window, 'load', initialize);

	</script>
	</head>
	<body>
	<div></div>
 	<c:if test="${carte.nbUniv>0}">
		<c:forEach var="i" begin="0" end="${carte.nbUniv-1}">
	  		<!-- Il faut s�rialiser le bean pour ensuite, par un split r�cup�rer le tableau dans le js -->
		</c:forEach>
	</c:if>
    <div id="panel">
      <input type="button" value="Ex�cuter la fonction displayUniversities" onclick="displayUniversities()">
      <input type="button" value="Ex�cuter la fonction displayInternships" onclick="displayInternships()">
      <input type="button" value="Ex�cuter la fonction displayDoubleDiploma" onclick="displayDoubleDiploma()">

    </div>
    <div id="map-canvas"></div>
  </body>
</html>

