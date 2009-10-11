<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
                  <label for="leaderId">Team Leader: </label>
                    <select name="leaderId">
                        <c:forEach var="user" items="${updateTeam.teamUsers}">
                            <option value="${user.userId}"><c:out value="${user.userName}"/></option>
                        </c:forEach>
                    </select><br/>
                <label for="homeLocation">Home Location: </label>
                        <select name="homeLocation">
                        <c:forEach var="location" items="${updateTeam.allLocations}">
                            <option value="${location.locationId}"><c:out value="${location.locationName}"/></option>
                        </c:forEach>
                    </select><br/>
                <label for="image">Team Image URL: </label><input type="text" name="image"/><br/>
                <input type="submit" value="Modify Team!"/>
              </form>
                </p>
            </c:when>
            <c:otherwise>
                <p>Something went wrong when retrieving your team.</p>
            </c:otherwise>
        </c:choose>