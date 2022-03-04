<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.library.entities.User" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title> list users - lms</title>
  </head>
  <style>
    *{
		margin: 0;
		padding: 0;
	}
	.main{
		position: relative;
		width: 100%;
		height: 100%;
		background-color: white;
	}
	.users_sys{
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
    width: 950px;
		box-shadow: 0 0 6px 6px grey;
		background-color: rgb(240, 240, 240);
		padding: 10px;	
    max-height: 500px;
    overflow: auto;
		animation: fadein 1s;
	}
	@keyframes fadein {
		from{
			top: 40%;
			opacity: 0;
		}
		to{
			top: 50%;
			opacity: 1;
		}
	}
	.cname{
		height: 60px;
		font-size: 30px;
		font-family: Georgia, 'Times New Roman', Times, serif;
		font-weight: bold;
		text-align: center;
	}

  .u-list{
    margin: 0 auto;
  }
  .u-list table{
    width: 100%;
  }
  .u-list table th{
    background-color: black;
    color: white;
    height: 50px;
    font-size: 20px;
  }
  .u-list table, .u-list table td{
    background-color: rgb(230, 230, 255);
    border-bottom: 3px solid white;
    border-collapse: collapse;
  }
  .u-list table td{
    height: 50px;
  }
	.purpose{
		text-align: left;
		font-size: 20px;
		font-weight: bold;
		margin-bottom: 20px;
	}
	.user-add-btn{
		margin: 20px;
		text-align: center;
	}
	.user-add-btn a{
		margin-top: 10px;
		padding: 8px 7px;
		width: 200px;
		border-radius: 4px;
		background-color: rgb(41, 0, 189);
		color: white;
		font-size: 18px;
		text-decoration: none;
		border: none;
	}
	.user-add-btn a:hover{
		background-color: rgb(100, 43, 255);
		cursor: pointer;
	}
  </style>
  <body>
    <div class="users_sys">
      <div class="cname">
        Library Management System
      </div>       
      <div class="purpose">List of Users</div>

        <% List<User> users = (List<User>)request.getAttribute("userList"); %>
        Total number of users : <%=users.size()%>
        
        <div class="user-add-btn">
          <a href="view/addUser.jsp"> Add User </a>
        </div>
        
        <div class="u-list">
          <table>
          <tr>
            <th>S.N</th>
            <th>FullName</th>
            <th>UserName</th>
            <th>Role</th>
            <th> Action </th>
          </tr>  
            
          
          <% for(User usr : users) {%>
          <tr>
            <td><%= usr.getId()%></td>
            <td><%= usr.getFullName()%></td>
            <td><%=usr.getUsername() %></td>
            <td><%=usr.getRole() ==1 ? "Teacher " : "Student" %></td>
            <td>
            <a href="users/getEdit?id=<%= usr.getId()%>" onclick="return confirm('Are you really going to modify this record ? ');">Edit || </a>
            <a href="deleteUser?id=<%= usr.getId()%>" onclick="return confirm('Are you sure to delete this record ?');">Delete</a>
            </</td>
          </tr>
            <%}
            %>

        </table>
      </div>
    </div>
  </body>
</html>