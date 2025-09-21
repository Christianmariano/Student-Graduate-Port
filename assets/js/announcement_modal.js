function openModal(modalId) {
    document.getElementById(modalId).style.display = "block";
}

function closeModal(modalId) {
    document.getElementById(modalId).style.display = "none";
}

// Event listeners for buttons
document.querySelector('button.add-announcement').addEventListener('click', function() {
    openModal('addAnnouncementModal');
});

document.querySelector('button.update-announcement').addEventListener('click', function() {
    openModal('updateAnnouncementModal');
});

document.querySelector('button.delete-announcement').addEventListener('click', function() {
    openModal('deleteAnnouncementModal');
});

// Close modals when clicking outside of them
window.onclick = function(event) {
    if (event.target.classList.contains('modal')) {
        closeModal('addAnnouncementModal');
        closeModal('updateAnnouncementModal');
        closeModal('deleteAnnouncementModal');
    }
}