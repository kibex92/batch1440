
const GARAGE = "millers_garage"
const carList = document.querySelector(".cars-list")
// Define URL
const url = `https://wagon-garage-api.herokuapp.com/${GARAGE}/cars`
// Make a fetch request to the url

const fetchCars = () => {
  fetch(url)
    .then(response => response.json())
    .then(data => {
      carList.innerHTML = ""
      data.forEach(createCard)
  })
}
// Iterate over the cars
// Create car card

const createCard = (car) => {
  const card = `
    <div class="car">
            <div class="car-image">
              <img src="http://loremflickr.com/280/280/${car.brand}" />
            </div>
            <div class="car-info">
              <h4>${car.brand} ${car.model}</h4>
          <p><strong>Owner:</strong>${car.owner}</p>
          <p><strong>Plate:</strong>${car.plate}</p>
        </div>
      </div>`
  carList.insertAdjacentHTML("afterbegin", card)
}

// POST
// Select the form
const form = document.querySelector(".car-form")
// Add event listener -> submit
form.addEventListener("submit", (event) => {
  event.preventDefault();
  const formData = new FormData(event.target)
  const carObject = Object.fromEntries(formData);
  const requestOptions = {
    method: "POST",
    headers: {"Content-Type": "application/json"} ,
    body: JSON.stringify(carObject)
  }
  fetch(url, requestOptions)
    .then(response => response.json())
    .then(fetchCars())
  
})
// prevent the default
// Create URL
// create request options
// create body with values from input fields
// Make the etch request 
// Fetch the cars
fetchCars();
