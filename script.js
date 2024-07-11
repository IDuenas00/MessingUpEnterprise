function createdata () {

document.getElementById('registration-form').addEventListener('submit', function(event) {

    var fname = document.getElementById("F_Name").value;
    var lname = document.getElementById("L_Name").value;
    var email = document.getElementById("email").value;
    var number = document.getElementById("number").value;
    var password = document.getElementById("pwd").value;

    const data = [["First Name", "Last Name", "Email","Number","Password"],[fname,lname,email,number,password]];
    const csvContent = data.map(e => e.join(",")).join("\n");
    const blob = new Blob([csvContent], { type: 'text/csv' });
    const url = URL.createObjectURL(blob);
    const a = document.createElement('a');
    a.setAttribute('href', url);
    a.setAttribute('download', 'data.csv');
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
})};