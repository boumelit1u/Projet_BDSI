<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<%@ include file="header.jsp"%>
	<div id="options_admin">
	<p>
		<a href="universite?modif=1" style="text-decoration:none; color: #6C2466"> <span class="options_admin">Ajouter une université</span></a>
	</p>
	</div>
	<div id="accueil" style="width:20%"><%@ include file="menu.jsp" %></div>
	<div id="corps">
		<p class="titre_section">Liste des universités</p>
			<div>
				<c:forEach var="i" begin="0" end="${list.nbUniv-1}">
					<c:choose>
						<c:when test="${(i%3)==0 }">
						<div id="ligne">
								<input type="button" class="categorie" name="${i}" style="background:url(<%=request.getContextPath() %>/${list.paths[i]}) no-repeat; background-size: 250px 100px; color: black; border: none" value="${list.pays[i]}" onclick='window.location.href="<%=request.getContextPath() %>/universite?id=${list.id[i]}"'>
						</div>
					</c:when>
					<c:otherwise>
						<input type="image" class="categorie" name="${i}" src="<%=request.getContextPath() %>/${list.paths[i]}" onclick='window.location.href="<%=request.getContextPath() %>/universite?id=${list.id[i]}"'>
					</c:otherwise>
					</c:choose>
				</c:forEach>
			</div>
		</div>
</body>
</html>