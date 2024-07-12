document.addEventListener('DOMContentLoaded', function() {
  const searchForm = document.getElementById('search-form');
  const destination = document.getElementById('destination-resultat');

  if (searchForm && destination) {
    searchForm.addEventListener('submit', function(event) {
      event.preventDefault();
      // Prevent the form from submitting immediately

      // Scroll to the destination
      destination.scrollIntoView({ behavior: 'smooth' });

      // Allow some time for the scroll, then submit the form
      setTimeout(() => searchForm.submit(), 500); // Adjust the delay as needed
    });
  }
});
