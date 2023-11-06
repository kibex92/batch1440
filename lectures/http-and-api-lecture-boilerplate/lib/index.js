const url = 'https://www.boredapi.com/api/activity/'
// Select the button
const header = document.getElementById("activity")
const button = document.querySelector(".btn-warning")
// Add event listener -> click
button.addEventListener("click", (event) => {
  // Select header to insert activity
  // Call the API -> fetch
  // Insert activity to the header
  fetch(url)
    .then(response => response.json())
    .then((data) => {
      // data is a JS object(ruby hash)
      header.innerText = data.activity
    });
})
