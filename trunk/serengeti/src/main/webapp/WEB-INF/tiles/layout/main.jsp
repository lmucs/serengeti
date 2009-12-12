<?xml version="1.0" encoding="utf-8" ?>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><tiles:insertAttribute name="title" value="${title}"/></title>
    <link rel="stylesheet" type="text/css"
      media="screen and (min-device-width: 481px)"
      href="${pageContext.request.contextPath}/styles/serengeti.css"
    />
    <link rel="stylesheet" type="text/css"
      media="screen screen and (min-device-width: 481px)"
      href="${pageContext.request.contextPath}/styles/960.css"
    />
    <link rel="stylesheet" type="text/css"
      media="only screen and (max-device-width: 480px)"
      href="${pageContext.request.contextPath}/styles/serengeti-mobile.css"
    />
    <script	src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.1/jquery.min.js">
    </script>
    <script	src="${pageContext.request.contextPath}/scripts/jquery-1.3.2.min.js">
    </script>
    <script src="${pageContext.request.contextPath}/scripts/serengeti.js">
    </script>
    <script src="${pageContext.request.contextPath}/scripts/scrollbar.js">
    </script>
    <script src="${pageContext.request.contextPath}/scripts/json2.js">
    </script>
  </head>

  <body>
    <div id="container">
      <div id="header">
        <div><img id="logo" alt="banner"
          src="${pageContext.request.contextPath}/images/banner.jpg" />
        </div>
        <div id="navbar2">
          <ul>
            <li><a href="${pageContext.request.contextPath}/">Home</a></li>
            <c:if test="${session.loggedIn}">
              <li><a href="${pageContext.request.contextPath}/user/${session.user.id}">Profile</a></li>
            </c:if>
            <c:if test="${not session.loggedIn}">
              <li><a href="${pageContext.request.contextPath}/user/login">Log In</a></li>
            </c:if>
            <li><a href="${pageContext.request.contextPath}/user">Users</a></li>
            <li><a href="${pageContext.request.contextPath}/team">Teams</a></li>
            <li><a href="${pageContext.request.contextPath}/location">Locations</a></li>
            <li><a href="${pageContext.request.contextPath}/help">Help</a></li>
            <c:if test="${session.loggedIn}">
              <li><a href="${pageContext.request.contextPath}/user/logout">Log Out</a></li>
            </c:if>
          </ul>
        </div>
        <div class="searchbar">
          <form action="${pageContext.request.contextPath}/search" method="post">
            <div>
              <input type="text" name="query" id="query"
                value="Search for people, places, or teams"
                onfocus="makeBlank(this)"
                onblur="returnValue(this)"
              />
              <input type="submit" value="Go" />
            </div>
          </form>
        </div>
      </div>
    </div>

    <tiles:insertAttribute name="header" />

    <div class="mainContentArea container_12">
      <h1 class="pagetitle">
        <tiles:insertAttribute name="title" value="${title}"/>
      </h1>
      <tiles:insertAttribute name="body"/>
    </div>

    <script src="${pageContext.request.contextPath}/scripts/inputbox.js">
    </script>

    <tiles:insertAttribute name="footer" />
  </body>
</html>
