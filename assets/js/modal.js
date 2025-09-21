
// Get modal element
var modal = document.getElementById("updateModal");

// Get close button
var span = document.getElementsByClassName("close")[0];

// Function to open the modal
function openModal(id, fullname, course, phone, address, gmail) {
    document.getElementById("studentId").value = id;
    document.getElementById("fullname").value = fullname;
    document.getElementById("course").value = course;
    document.getElementById("phone").value = phone;
    document.getElementById("address").value = address;
    document.getElementById("gmail").value = gmail;
    modal.style.display = "block";
}

// Function to close the modal
function openDeleteModal(studentId) {
    document.getElementById('deleteStudentId').value = studentId;
    document.getElementById('deleteModal').style.display = 'block';
}

function closeDeleteModal() {
    document.getElementById('deleteModal').style.display = 'none';
}

// Optional: Close modal when clicking outside the modal content
window.onclick = function(event) {
    if (event.target.classList.contains('modal')) {
        closeDeleteModal();
    }
};
