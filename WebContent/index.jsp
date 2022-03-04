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
	.login_container{
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		width: 400px;
		height: 350px;
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
	.login_error{
		text-align: left;
		font-size: 20px;
		color: red;
		font-weight: 500;
	}

	.login_container input[type='text'], .login_container input[type='password']{
		width: 100%;
		padding: 10px 12px;
		font-size: 18px;
		margin-bottom: 20px;
		outline: none;
	}

	.submit-btn{
		text-align: center;
	}

	.login_container input[type='submit']{
		margin-top: 10px;
		padding: 10px 12px;
		width: 200px;
		border-radius: 4px;
		background-color: rgb(41, 0, 189);
		color: white;
		font-size: 30px;
		border: none;
	}
	.login_container input[type='submit']:hover{
		background-color: rgb(100, 43, 255);
		cursor: pointer;
	}
</style>
<body>
	<div class="main">
		<div class="login_container">
			<div class="cname">
				Library Management System
			</div>
			<div class="login_error">
				* ${errorMsg}
			</div> 
				

			<form name="userLogin" method="post" action="userLogin">

				<label>Username: </label> 
				<input type="text" name="username" placeholder="Username" autofocus/> <br /> 
				
				<label>Password: </label>
				<input type="password" name="password" placeholder="Password"/> <br /> 
				
				<div class="submit-btn">
					<input type="submit" value="Login" />
				</div>
			</form>
		</div>
	</div>
</body>
</html>