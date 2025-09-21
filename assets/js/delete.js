// Get the modal
var modal = document.getElementById("deleteModal");

// Get the buttons that open the modal
var deleteButtons = document.querySelectorAll(".delete-btn");

// Get the element that closes the modal
var closeButtons = document.querySelectorAll(".modal-close");

// Get the confirmation button
var confirmDelete = document.getElementById("confirmDelete");

// Function to open the modal
deleteButtons.forEach(function(button) {
    button.onclick = function(event) {
        event.preventDefault(); // Prevent the default link action
        modal.style.display = "block";
        // Set the confirmation link
        confirmDelete.href = button.getAttribute("data-delete-url");
    };
});

// Function to close the modal
closeButtons.forEach(function(button) {
    button.onclick = function() {
        modal.style.display = "none";
    };
});

// Close the modal if the user clicks outside of it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
};
