function validateForm() {
    var pwd = document.getElementById("pwd").value;
    var confirm_pwd = document.getElementById("confirm_password").value;
    if (pwd !== confirm_pwd) {
        alert("Passwords do not match.");
        return false;
    }
    return true;
}