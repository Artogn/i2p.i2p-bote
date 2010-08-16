<%--
 Copyright (C) 2009  HungryHobo@mail.i2p
 
 The GPG fingerprint for HungryHobo@mail.i2p is:
 6DD3 EAA2 9990 29BC 4AD2 7486 1E2C 7B61 76DC DC12
 
 This file is part of I2P-Bote.
 I2P-Bote is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 
 I2P-Bote is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with I2P-Bote.  If not, see <http://www.gnu.org/licenses/>.
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="ib" uri="I2pBoteTags" %>

<%--
    JSP variables that can be passed into this JSP:
    
        title           - The page title to set
        refreshInterval - If this parameter is set, do an HTTP refresh every refreshInterval seconds
        refreshUrl      - If refreshInterval is set, load this URL when refreshing
--%>

<fmt:requestEncoding value="UTF-8"/>

<jsp:useBean id="jspHelperBean" class="i2p.bote.web.JSPHelper"/>
<fmt:setLocale value="${jspHelperBean.language}" scope="request"/>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <%-- Refresh --%>
    <c:if test="${not empty refreshInterval}">
        <meta http-equiv="refresh" content="${refreshInterval};url=${refreshUrl}" />
    </c:if>
    
    <link rel="stylesheet" href="i2pbote.css" />
    <link rel="icon" type="image/png" href="images/favicon.png" />
    <c:if test="${!empty title}">
        <title>${title} <ib:message key="- I2P-Bote"/></title>
    </c:if>
</head>

<body>

<div class="titlebar" style="cursor:pointer" onclick="document.location='.'">
    <div class="title"><ib:message key="I2P-Bote"/></div>
    <br/>
    <div class="subtitle"><ib:message key="Secure Distributed Email"/></div>
</div>

<div class="menubox">
    <iframe src="buttonFrame.jsp" width="100%" height="40px" scrolling="no" frameborder="0" allowtransparency="true"></iframe>
</div>

<div class="menubox">
    <iframe src="folders.jsp" width="100%" height="250px" scrolling="no" frameborder="0" allowtransparency="true"></iframe>
</div>

<div class="menubox">
    <h2><ib:message key="Addresses"/></h2>
    <a href="identities.jsp"><ib:message key="Identities"/></a><br/>
    <a href="addressBook.jsp"><ib:message key="Address Book"/></a><br/>
    Public Address Directory<br/>
</div>

<div class="menubox">
    <h2><ib:message key="Configuration"/></h2>
    <a href="settings.jsp"><ib:message key="Settings"/></a><br/>
</div>

<div class="menubox">
    <h2><a href="network.jsp"><ib:message key="Network Status"/></a></h2>
    <iframe src="statusFrame.jsp" width="100%" height="40px" scrolling="no" frameborder="0" allowtransparency="true"></iframe>
</div>

<div class="menubox">
    <h2><ib:message key="Help"/></h2>
    <ib:message key="User Guide"/><br/>
    <a href="about.jsp"><ib:message key="About"/></a><br/>
</div>

<div class="infoMessage">
    ${fn:escapeXml(param.infoMessage)}
</div>

<div class="errorMessage">
    ${fn:escapeXml(param.errorMessage)}
</div>