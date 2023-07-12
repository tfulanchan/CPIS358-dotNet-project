<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm.aspx.cs" Inherits="dotnetCPIS358.WebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    	<form id="loginForm" runat="server">
		<label for="username">Username:</label>
		<input type="text" id="username" name="username" required>
		<span id="usernameError" style="display:none;">Please enter a valid username.</span>

		<label for="password">Password:</label>
		<input type="password" id="password" name="password" required>
		<span id="passwordError" style="display:none;">Please enter a valid password.</span>

		<label for="saveId">Save user ID:</label>
		<input type="checkbox" id="saveId" name="saveId">

		<button type="submit">Submit</button>

		<span id="errorLabel" style="display:none;">Invalid username or password.</span>
	</form>
	<!-- Add JavaScript code here -->
	<script>
		// Get references to the form and the input fields
		var loginForm = document.getElementById("loginForm");
		var usernameInput = document.getElementById("username");
		var passwordInput = document.getElementById("password");

		// Add event listeners to the input fields
		usernameInput.addEventListener("input", function() {
			if (!/^[a-zA-Z]+$/.test(usernameInput.value)) {
				usernameInput.setCustomValidity("Please enter a valid username.");
				document.getElementById("usernameError").style.display = "block";
			} else {
				usernameInput.setCustomValidity("");
				document.getElementById("usernameError").style.display = "none";
			}
		});

		passwordInput.addEventListener("input", function() {
			if (passwordInput.value.length < 8 || passwordInput.value.length > 20 || !/^[a-zA-Z0-9]+$/.test(passwordInput.value)) {
				passwordInput.setCustomValidity("Please enter a valid password.");
				document.getElementById("passwordError").style.display = "block";
			} else {
				passwordInput.setCustomValidity("");
				document.getElementById("passwordError").style.display = "none";
			}
		});

		// Prevent the form from submitting if there are errors
		loginForm.addEventListener("submit", function(event) {
			if (!loginForm.checkValidity()) {
				event.preventDefault();
			}
		});
    </script>
</asp:Content>
