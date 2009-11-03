<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    <div class="mainContentArea">
        <div class="hor_menu">
	        <div>
	            <p>Recently Checked In</p>
	        </div>
	        <ul class="hor_menu">
	            <c:forEach var="user" items="${recent}">
	               <li>
	                   <img src="${pageContext.request.contextPath}/images/avatar.jpg" alt="user"/>
	                   <span>
	                       <a href="view?userId=${user.userId}"><c:out value="${user.displayName}"/></a>
	                   </span>
	               </li>
	            </c:forEach>
	        </ul>
	        
	        <ul>
            <c:forEach var="user" items="${recent}">
               <li><a href="view?userId=${user.userId}"><c:out value="${user.displayName}"/></a></li>
            </c:forEach>
        </ul>
	        
	    </div>
        <div class="hor_menu">
            <div>
	        	<p>Most Active Users</p>
	        </div>
	        <ul class="hor_menu">
	            <c:forEach var="user" items="${mostActive}">
	               <li>
	                   <img src="${pageContext.request.contextPath}/images/avatar.jpg" alt="user"/>
	                   <span>
	                       <a href="view?userId=${user.userId}"><c:out value="${user.displayName}"/></a>
	                   </span>
	               </li>
	            </c:forEach>
	        </ul>
	        
	        <ul>
            <c:forEach var="user" items="${mostActive}">
               <li><a href="view?userId=${user.userId}"><c:out value="${user.displayName}"/></a></li>
            </c:forEach>
        </ul>
        
        </div>
        <div class="hor_menu">
            <div>
        		<p>Newest Users</p>
            </div>
	        <ul class="hor_menu">
	            <c:forEach var="user" items="${newest}">
	               <li>
	                   <img src="${pageContext.request.contextPath}/images/avatar.jpg" alt="user"/>
	                   <span>
	                       <a href="view?userId=${team.userId}"><c:out value="${user.displayName}"/></a>
	                   </span>
	               </li>
	            </c:forEach>
	        </ul>
	        
	        <ul>
            <c:forEach var="user" items="${newest}">
               <li><a href="view?userId=${user.userId}"><c:out value="${user.displayName}"/></a></li>
            </c:forEach>
        </ul>
        
	    </div>
    </div>