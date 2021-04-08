<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administrer utstilling</title>
    <link rel="icon" type="image/png" sizes="32x32" href="../images/favicon.png">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Squada+One&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/normalize.css">
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/admin-expo-config.css">
</head>

<body>
    <div class="admin-expo-config container">
        <div class="admin-expo-config-top">
            <h1 class="admin-expo-config-title">Administrer utstilling</h1>
            <p class="admin-expo-config-name">Utstillingsnavn:</p>
            <select name="id" class="exhibition">
                    <c:forEach items="${exhibitions}" var="p">
						<option value="${p.id}">${p.name}</option>
					</c:forEach>
                </select>
        </div>

        <form class="admin-expo-config-add admin-expo-config-box transparent-bg" action="" method="POST">
            <h2>Legg til nytt prosjekt</h2>

            <label>Filnavn:</label>
            <input type="file" class="admin-expo-config-input" name="projects">
            <input type="submit" class="button-default" value="Importer prosjekter">

            <hr>

            <div class="clearfix">
                <label>Prosjektnummer:</label>
                <input type="text" class="admin-expo-config-input-inline" name="projectNumber">
            </div>
            <div class="clearfix">
                <label>Prosjektnavn:</label>
                <input type="text" class="admin-expo-config-input-inline" name="projectName">
            </div>
            <input type="submit" class="button-default" value="Legg til prosjekt">
        </form> <!--.admin-expo-config-add-->

        <form class="admin-expo-config-remove admin-expo-config-box transparent-bg" action="" method="POST">
            <h2>Fjern prosjekt</h2>

            <label>Prosjektnummer og -navn:</label>
            <select name="projectnr" class="projectnr admin-expo-config-input">
            	<c:forEach items="${projects}" var="p">
                <option value="${p.projectNumber}">${p.projectName}</option>
                </c:forEach>
            </select>
            <input type="submit" class="button-default" value="Fjern prosjekt">
        </form> <!--.admin-expo-config-remove-->

        <h2 class="admin-expo-config-title">
            Endre stemmetidspunkt
        </h2>

        <div class="admin-expo-config-dates admin-expo-config-box transparent-bg clearfix">
            <form class="admin-expo-config-startdate" action="" method="POST">
                <h2>Start</h2>
                <p>N�v�rende startdato og -klokkeslett:</p>
                <p>Tirsdag 1. mai 2022 kl. 09.00</p>
                <div class="input-half">
                    <label>Dato</label>
                    <input type="text" name="date">
                </div>
                <div class="input-half">
                    <label>Klokkeslett</label>
                    <input type="text" name="time">
                </div>
                <input type="submit" class="button-default" value="Oppdater starttidspunkt">
            </form> <!--.admin-expo-config-dates-->

            <form class="admin-expo-config-enddate" action="" method="POST">
                <h2>Slutt</h2>
                <p>N�v�rende sluttdato og -klokkeslett:</p>
                <p>Tirsdag 1. mai 2022 kl. 09.00</p>
                <div class="input-half">
                    <label>Dato</label>
                    <input type="text" name="date">
                </div>
                <div class="input-half">
                    <label>Klokkeslett</label>
                    <input type="text" name="time">
                </div>
                <input type="submit" class="button-default" value="Oppdater sluttidspunkt">
            </form> <!--.admin-expo-config-enddate-->
        </div> <!--.admin-expo-config-dates-->
    </div> <!--.admin-expo-config-->
</body>