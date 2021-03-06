<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TN International</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div id="options_admin">
	<p>
		<c:if test="${sessionScope.user.fonction == 'Administrateur' || sessionScope.user.fonction == 'Pôle Relations Internationales' || sessionScope.user.fonction == 'Responsable Relations Internationales'}">
			<a href="blog?modif=1" style="text-decoration:none; color: #6C2466"> <span class="options_admin">Modifier</span></a>
		</c:if>
	</p>
	</div>
	<div id="accueil" style="width:20%"><%@ include file="menu.jsp" %></div>
	<div id="corps">
		<p class="titre_section">Liste des doubles diplômes</p>
			<div>
				<c:if test="${list.nbDD > 0}">
					<c:forEach var="i" begin="0" end="${list.nbDD-1}">
						<c:choose>
							<c:when test="${(i%2)==0 }">
							<div id="ligne">
									<span style="vertical-align:bottom; float:left; display:inline-block;margin:30px; "><input type="button" class="categorie" name="${i}" style="background:url(<%=request.getContextPath() %>/${list.logo_path[i]}) no-repeat; background-size: 250px 100px; color: black; border: none" onclick='window.location.href="<%=request.getContextPath() %>/doubleDiplome?id=${list.id[i]}"'><br/>${list.dd_nom[i]}</span>
							</div>
						</c:when>
						<c:otherwise>
									<span style="vertical-align:bottom; float:left; display:inline-block;margin:30px; "><input type="button" class="categorie" name="${i}" style="background:url(<%=request.getContextPath() %>/${list.logo_path[i]}) no-repeat; background-size: 250px 100px; color: black; border: none" onclick='window.location.href="<%=request.getContextPath() %>/doubleDiplome?id=${list.id[i]}"'><br/>${list.dd_nom[i]}</span>
						</c:otherwise>
						</c:choose>
					</c:forEach>
				</c:if>
			</div>
	</div>
</body>
</html>