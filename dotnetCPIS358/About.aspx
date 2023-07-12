<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="dotnetCPIS358.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>

    <!-- Add HTML elements for the form here -->
    <form id="loginForm">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name">
        <span id="nameError" style="display: none;">Please enter a valid name.</span>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password">
        <span id="passwordError" style="display: none;">Please enter a valid password.</span>

        <button type="submit">Submit</button>
    </form>
    <!-- Add JavaScript code here -->
    <script>
		// Get references to the form and the input fields
		var loginForm = document.getElementById("loginForm");
		var nameInput = document.getElementById("name");
		var passwordInput = document.getElementById("password");

		// Add event listeners to the input fields
		nameInput.addEventListener("input", function() {
			if (!/^[a-zA-Z]+$/.test(nameInput.value)) {
				nameInput.setCustomValidity("Please enter a valid name.");
				document.getElementById("nameError").style.display = "block";
			} else {
				nameInput.setCustomValidity("");
				document.getElementById("nameError").style.display = "none";
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
