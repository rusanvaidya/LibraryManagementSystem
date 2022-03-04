<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>LMS | Add User</title>
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
	.add_user_sys{
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
	.purpose{
		text-align: left;
		font-size: 20px;
		font-weight: bold;
		margin-bottom: 20px;
	}

	.add_user_sys input[type='text'], .add_user_sys input[type='password'], .add_user_sys input[type='number']{
		width: 100%;
		padding: 10px 12px;
		font-size: 18px;
		margin-bottom: 20px;
		outline: none;
	}

	input::-webkit-outer-spin-button,
	input::-webkit-inner-spin-button {
	-webkit-appearance: none;
	margin: 0;
	}

	.submit-btn{
		text-align: center;
	}

	.add_user_sys input[type='submit']{
		margin-top: 10px;
		padding: 10px 12px;
		width: 200px;
		border-radius: 4px;
		background-color: rgb(41, 0, 189);
		color: white;
		font-size: 30px;
		border: none;
	}
	.add_user_sys input[type='submit']:hover{
		background-color: rgb(100, 43, 255);
		cursor: pointer;
	}
</style>
<body>
	<div class="main">
		<div class="add_user_sys">
			<div class="cname">
				Library Management System
			</div>
			<div class="purpose">
				Add New User
			</div>
			<form action="/LibraryManagementSystem/addUser" method="POST">

				<label>FullName: </label> 
				<input type="text" name="fullName" placeholder="Full Name"/> <br> 
				
				<label>Username: </label>
				<input type="text" name="username" placeholder="Username"/> <br> 
				
				<label>Password : </label>
				<input type="password" name="password" placeholder="Password"/> <br>
				
				<label> Roll Number: </label>
				<input type="number" name="role" placeholder="Roll Number" min="1"/>
				
				<div class="submit-btn">
					<input type="submit" value="Add"/>
				</div>
			</form>
		</div>
	</body>
</html>