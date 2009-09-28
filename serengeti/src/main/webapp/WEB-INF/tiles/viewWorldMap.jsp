<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
    <head>
        <title>View World Map</title>
    </head>
  
    <body>
        Stub page to show world map for userID 
    	<c:if test='${ !empty userID }'>
      		<strong><c:out value=" ${userID}"/></strong>...</p>
    	</c:if>
        </p>
        
        <c:if test='${ empty userID }'>    
    	<p>View World Map centered around which User ID?</p>
        <p>
			<form method="get" action="game">
				<label for="userID"> User ID </label><input type="text" name="userID"/><br/>
				<input type="submit" value="View World Map"/>
			</form>
        </p>
        </c:if>
    </body>
</html>

