<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
    <title>Library Mgt System</title>
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
	.sys_home{
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		width: 400px;
		box-shadow: 0 0 6px 6px grey;
		background-color: rgb(240, 240, 240);
		padding: 10px;	
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
	.u-name{
		text-align: center;
	}
	.u-name span{
		color: rgb(132, 0, 255);
		font-size: 15px;
		font-weight: bold;
	}
	.purpose{
		text-align: left;
		font-size: 20px;
		font-weight: bold;
		margin-bottom: 20px;
	}
	.user-show-btn{
		margin: 20px;
		text-align: center;
	}
	.user-show-btn a{
		margin-top: 10px;
		padding: 8px 7px;
		width: 200px;
		border-radius: 4px;
		background-color: rgb(41, 0, 189);
		color: white;
		font-size: 30px;
		text-decoration: none;
		border: none;
	}
	.user-show-btn a:hover{
		background-color: rgb(100, 43, 255);
		cursor: pointer;
	}
  </style>
  <body>
    <div class="sys_home">
		<div class="cname">
			Library Management System
		</div>
		<div class="u-name"> 
			User : <span><%=session.getAttribute("sessionValue")%></span>
		</div>
		<div class="user-show-btn">
			<a href="users">View List Users</a>
		</div>
    </div>
  </body>
</html>