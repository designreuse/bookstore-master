
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<form:form method="GET" action="/bookstore/vehicle/vehicleRegister">
		<input class="btn btn-primary" value=" Add Vehicle +"  type="submit">
</form:form>

<br><br>
		
<table class="table table-striped">
			<thead>
				<tr>
					<th width="4%">S.N</th>
					<th width="12%">RegNumber</th>
					<th width="12%">Engine Number</th>
					<th width="12%">Model</th>
					<th width="12%">fuelType</th>
					<th width="12%">Ac/Non Ac</th>
					<th width="12%">Seats</th>
					<th width="12%"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${vehicleList}" var="vehicle" varStatus="loopCounter">
					<tr>
						<td><c:out value="${loopCounter.count}" /></td>
						<td><c:out value="${vehicle.regNumber}" /></td>
						<td><c:out value="${vehicle.enginNumger}" /></td>
						<td><c:out value="${vehicle.modle}" /></td>
						<td><c:out value="${vehicle.fuelType}" /></td>
						<td><c:out value="${vehicle.acVehicle}" /></td>
						<td><c:out value="${vehicle.seats}" /></td>

						<td><nobr>
								<%-- <button class="btn btn-primary"
									onclick="editvehicle(${vehicle.id});">

									<i class="fa fa-pencil"></i> Edit
								</button> --%>
								
								<form:form method="GET" action="/bookstore/vehicle/get/${vehicle.id}">
										<input class="btn btn-primary" type="submit">
										<i class="fa fa-pencil"></i> Edit
								</form:form> 

								<a class="btn btn-primary"
									onclick="return confirm('Are you sure you want to delete this vehicle?');"
									href="/bookstore/vehicle/delete/${vehicle.id}"> <i class="fa fa-times"></i>Delete
								</a>

							</nobr></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>