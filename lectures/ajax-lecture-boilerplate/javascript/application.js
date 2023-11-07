// Select the form
import Swal from "sweetalert2";

const form = document.querySelector("#form")
const url = "https://reqres.in/api/register"
// Add event listener -> submit
form.addEventListener("submit", (event) => {
  event.preventDefault();
  const emailValue = document.getElementById("email").value
  const passwordValue = document.getElementById("password").value
  const requestOptions = {
    method: "POST",
    headers: {"Content-Type": "application/json" },
    body: JSON.stringify({email: emailValue, password: passwordValue})
  }
  fetch(url, requestOptions)
    .then(response => {
      if (response.status == 200) {
        Swal.fire({
          title: "Good job!",
          text: "You clicked the button!",
          icon: "success"
        });
      } else {
        Swal.fire({
          icon: "error",
          title: "Oops...",
          text: "Something went wrong!",
          footer: '<a href="#">Why do I have this issue?</a>'
        });
      }
    } )
})
// Prevent the default behaviour of the form
// Select email field and read value
// Select password field and read value
// Create fetch request options with method, headers, body
// Make fetch reuqest to the API and send 
// Email and password for the user to be created
