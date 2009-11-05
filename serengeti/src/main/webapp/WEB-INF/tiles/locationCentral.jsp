<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



        <div>
	        <p>Locations near you</p>
	    </div>
        <div class="hor_menu">
	        <ul class="hor_menu">
	            <c:forEach var="location" items="${nearbyLocations}">
	               <li>
	                   <img src="${pageContext.request.contextPath}/images/avatar.jpg" alt="location" title="${location.locationName}"/>
	                   <span>
	                       <a href="${location.locationId}"><c:out value="${location.locationName}" /></a>
	                   </span>
	               </li>
	            </c:forEach>
	        </ul>
	    </div>

<script type="text/javascript">
            scrollbar();
        </script>
        
        <c:if test="${session.loggedIn}">
            <p>Don't see your current location?  <a href="create">Add it.</a></p>
        </c:if>
        
<div id="map_canvas" style="width:50%; height:50%"></div>
<p id="location"></p>

<!--  meta name="viewport" content="initial-scale=0.5, user-scalable=no"/  -->

<script type="text/javascript" src="http://www.google.com/jsapi"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
    onload = function () {
        var latlng = new google.maps.LatLng(google.loader.ClientLocation.latitude,
            google.loader.ClientLocation.longitude);
        var location = "Your ip-based location: " + google.loader.ClientLocation.address.city;
        var myOptions = {
            zoom: 13,
            center: latlng,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
        document.getElementById("location").innerHTML = location;
    }
</script>
