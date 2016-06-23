<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>List Of Books</title>

<link rel="stylesheet"
	href='<c:url value="/web-resources/css/pure-0.4.2.css"/>'>

<link rel="stylesheet"
	href='<c:url value="/web-resources/css/font-awesome-4.0.3/css/font-awesome.css"/>'>

<link rel="stylesheet"
	href='<c:url value="/web-resources/css/jquery-ui-1.10.4.custom.css"/>'>

<style type="text/css">
th {
	text-align: left
}
</style>


</head>

<body>
	<div style="width: 95%; margin: 0 auto;">

		<div id="personDialog" style="display: none;">
			<%@ include file="personForm.jsp"%>
		</div>

		<h1>List Of Persons</h1>

		<button class="pure-button pure-button-primary" onclick="addPerson()">
			<i class="fa fa-plus"></i> Add Person
		</button>
		<br>
		<table class="pure-table pure-table-bordered pure-table-striped">
			<thead>
				<tr>
					<th width="4%">S.N</th>
					<th width="12%">First Name</th>
					<th width="12%">Last Name</th>
					<th width="12%">Age</th>
					<th width="12%">City</th>
					<th width="12%">Address</th>
					<th width="12%"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${personList}" var="person" varStatus="loopCounter">
					<tr>
						<td><c:out value="${loopCounter.count}" /></td>
						<td><c:out value="${person.firstName}" /></td>
						<td><c:out value="${person.lastName}" /></td>
						<td><c:out value="${person.age}" /></td>
						<td><c:out value="${person.city}" /></td>
						<td><c:out value="${person.adress}" /></td>


						<td><nobr>
								<button class="pure-button pure-button-primary"
									onclick="editPerson(${person.id});">

									<i class="fa fa-pencil"></i> Edit
								</button>

								<a class="pure-button pure-button-primary"
									onclick="return confirm('Are you sure you want to delete this person?');"
									href="delete/${person.id}"> <i class="fa fa-times"></i>Delete
								</a>

							</nobr>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>

	<!--  It is advised to put the <script> tags at the end of the document body so they don't block rendering of the page -->
	<script type="text/javascript"
		src='<c:url value="/web-resources/js/lib/jquery-1.10.2.js"/>'></script>
	<script type="text/javascript"
		src='<c:url value="/web-resources/js/lib/jquery-ui-1.10.4.custom.js"/>'></script>
	<script type="text/javascript"
		src='<c:url value="/web-resources/js/lib/jquery.ui.datepicker.js"/>'></script>
	<script type="text/javascript"
		src='<c:url value="/web-resources/js/js-for-listPersons.js"/>'></script>
</body>
</html>