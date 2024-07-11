function validateForm() {
    var pwd = document.getElementById("pwd").value;
    var confirm_pwd = document.getElementById("confirm_password").value;
    if (pwd !== confirm_pwd) {
        alert("Passwords do not match.");
        return false;
    }
    return true;
}

document.addEventListener("DOMContentLoaded", function() {
    var form = document.getElementById("registrationForm");
    form.addEventListener("submit", function(event) {
        if (!validateForm()) {
            event.preventDefault(); // Prevent form submission if validation fails
            return;
        }

        // Form data is valid, proceed with AJAX request
        event.preventDefault(); // Prevent default form submission to allow AJAX handling
        var formData = new FormData(form);

        var xhr = new XMLHttpRequest();
        xhr.open("POST", form.action, true);
        xhr.onload = function() {
            if (xhr.status === 200) {
                alert("Your registration has been completed");
                form.reset(); // Reset the form after successful submission
            } else {
                alert("There was an error processing your registration. Please try again.");
            }
        };
        xhr.send(formData);
    });
});
