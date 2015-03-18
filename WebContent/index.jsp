<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
	<style>
		body, input{
			font-family: Calibri, Arial;
		}
		table#contact {
			border-collapse: collapse;
			width:550px;
		}
		th {
			height: 40px;
			background-color: #ffee55;
		}
	</style>
	<title>Contact Manager - Struts2 Hibernate Example</title>
</head>
<body>

<h1>Contact Manager</h1>
<s:actionerror/>

<s:form action="add" method="post">
	<s:textfield name="contact.firstName" label="Firstname" pattern="[a-zA-Z0-9\s]+"/>
	
	<s:textfield name="contact.lastName" label="Lastname" pattern="[a-zA-Z0-9\s]+"/>
	<s:textfield name="contact.emailId" label="Email" pattern="^(.+)@(.+)$"/>
	<s:textfield name="contact.cellNo" label="Cell No." pattern="^\\(?([0-9]{3})\\)?[-.\\s]?([0-9]{3})[-.\\s]?([0-9]{4})$"/>
	<%-- <s:textfield name="contact.website" label="Homepage"/> --%>
	<s:textfield name="contact.birthDate" label="Birthdate" pattern="(0?[1-9]|[12][0-9]|3[01])/(0?[1-9]|1[012])/((19|20)\\d\\d)"/>
	<s:submit value="Add Contact" align="center"/>
</s:form>


<h2>Contacts</h2>
<table id="contact" border="1">
<tr>
	<th>Name</th>
	<th>Email</th>
	<th>Cell No.</th>
	<th>Birthdate</th>
	<!-- <th>Homepage</th> -->
	<th>Delete</th>
</tr>
<s:iterator value="contactList" var="contact">
	<tr>
		<td><s:property value="lastName"/>, <s:property value="firstName"/> </td>
		<td><s:property value="emailId"/></td>
		<td><s:property value="cellNo"/></td>
		<td><s:property value="birthDate"/></td>
		<%-- <td><a href="<s:property value="website"/>">link</a></td> --%>
		<td><a href="delete?id=<s:property value="id"/>">delete</a></td>
	</tr>	
</s:iterator>
</table>
</body>
</html>