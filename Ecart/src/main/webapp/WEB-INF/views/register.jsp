<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<body>
	<%@include file="menu.jsp"%>
	 <div class="container">
		<h1 class="well">Registration Form</h1>
		<div class="col-lg-12 well">
			<div class="row">
			
						<form:form method="post" action="saveUser" >
				 <table >
        
          <tr> 
           <td>Name : </td>
           <td><form:input path="name" type="text" required="true"  title = "enter Name" /></td>
          </tr>
          <tr>    
          <td>UserId : </td>
           <td><form:input path="id" type="text" required="true"  title = "enter id"/></td>
          </tr>
          <tr>    
          <td>Password : </td>
           <td><form:input path="password" type="password" pattern="{5,10}"  required="true" title = "week password"/></td>
          </tr>
          <tr>    
          
           <td><form:hidden path="role"  /></td>
          </tr>
          <tr>    
          
           <td><form:hidden path="enabled"  /></td>
          </tr>
				 <tr>    
          <td> </td>    
          <td><input type="submit"  /></td>    
         </tr>  
          </table>
			</form:form>	 

				<!-- <div class="col-sm-12">
					<div class="row">
						<div class="col-sm-6 form-group">
							<label>First Name</label>
							<input type="text"
							placeholder="Enter first Name Here.." class="form-control">

						</div>
						<div class="col-sm-6 form-group">
							<label>Last Name</label> <input type="text"
								placeholder="Enter Last Name Here.." class="form-control">
						</div>
					</div>
					<div class="form-group">
						<label>Address</label>
						<textarea placeholder="Enter Address Here.." rows="3"
							class="form-control"></textarea>
					</div>
					<div class="row">
						<div class="col-sm-4 form-group">
							<label>City</label> <input type="text"
								placeholder="Enter City Name Here.." class="form-control">
						</div>
						<div class="col-sm-4 form-group">
							<label>State</label> <input type="text"
								placeholder="Enter State Name Here.." class="form-control">
						</div>
						<div class="col-sm-4 form-group">
							<label>Zip</label> <input type="text"
								placeholder="Enter Zip Code Here.." class="form-control">
						</div>
					</div>
					<div class="row"></div>
					<div class="form-group">
						<label>Phone Number</label> <input type="text"
							placeholder="Enter Phone Number Here.." class="form-control">
					</div>
					<div class="form-group">
						<label>Email Address</label> <input type="text"
							placeholder="Enter Email Address Here.." class="form-control">
					</div>
					<div class="control-group">
						<label class="control-label" for="password">Password</label>
						<div class="controls">
							<input type="password" id="password" name="password"
								placeholder="" class="form-control input-lg">
							<p class="help-block">Password should be at least 6
								characters</p>
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="password_confirm">Password
							(Confirm)</label>
						<div class="controls">
							<input type="password" id="password_confirm"
								name="password_confirm" placeholder=""
								class="form-control input-lg">
							<p class="help-block">Please confirm password</p>
						</div>
					</div>

					<button type="input" class="btn btn-lg btn-info">Submit</button>
					<button type="input" class="btn btn-lg btn-info">Reset</button>
					<td><input type="submit" value="Upload" /></td>
				</div> -->
				

			</div>
		</div>
	</div>

</body>
</html>