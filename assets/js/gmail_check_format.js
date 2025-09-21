function validateGmail() {
    var gmail = document.getElementById('gmail').value;
    var pattern = /^[a-zA-Z0-9._%+-]+@gmail\.com$/;
    if (!pattern.test(gmail)) {
        alert('Please enter a valid Gmail address.');
        return false;
    }
    return true;
}

