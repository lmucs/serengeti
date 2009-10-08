<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>

	<head>
		<title>Modify Team</title>
	</head>
	
	<body>
	    <a href="/serengeti"><img src="../images/serengeti-logo-full.png" alt="logo" style="float:right" height="20%" width="20%" border="0"/></a>
	
	    <c:choose>
            <c:when test='${ !empty updateTeam}'>
		        <p>Modify your team's settings.</p>
		        <p><strong><c:out value="${updateTeam.name}"/></strong></p>
		        <p>
			        <form method="post" action="update">
				        <label for="color">Preferred Color: </label>
				            <select name="color">
				                <option value="Red">Red</option>
				                <option value="Green">Green</option>
				                <option value="Blue">Blue</option>
				                <option value="Yellow">Yellow</option>
				                <option value="Magenta">Magenta</option>
				                <option value="Cyan">Cyan</option>
				            </select><br/>
				        <label for="leaderId">Team Leader ID: </label><input type="text" name="leaderId"/><br/>
				        <label for="homeLocation">Enter an address to be you teams home location: 
				          </label><input type="text" name="homeLocation"/><br/>
				        <label for="image">Team Image URL: </label><input type="text" name="image"/><br/>
				        <input type="submit" value="Modify Team!"/>
			        </form>
                </p>
            </c:when>
            <c:otherwise>
                <p>Something went wrong when retrieving your team.</p>
            </c:otherwise>
        </c:choose>
        
	</body>

</html>