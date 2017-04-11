<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<h5>Enter Your Personal Details</h5>

	<h1>Address</h1>

	<form:form method="post" action="saveBillingAddress">
		<table>

			<tr>
				<td></td>
				<td><form:hidden path="billingID" /></td>
			</tr>

			<tr>
				<td>Line1 :</td>
				<td><form:input path="line1" type="text" required="true"  title = "enter Name"/></td>
			</tr>
			<tr>
				<td>Line2 :</td>
				<td><form:input path="line2" /></td>
			</tr>
			<tr>

				<td>Landmark :</td>
				<td><form:input path="Landmark" /></td>
			</tr>

			<tr>
				<td>State :</td>
				<td><form:input path="State" type="text" required="true"  title = "enter Name"/></td>
			</tr>

			<tr>
				<td>City :</td>
				<td><form:input path="city" type="text" required="true"  title = "enter Name"/></td>
			</tr>
			<tr>
				<td>Pincode :</td>
				<td><form:input path="pincode" type="text" required="true"  title = "enter Name"/></td>
			</tr>
			<tr>
				<td>Phone Number :</td>
				<td><form:input path="phoneNumber" type="text" required="true"  title = "enter Number"/></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Upload" onclick="alert('Thank you for shopping!')"/></td>
			</tr>
		</table>


	</form:form>
