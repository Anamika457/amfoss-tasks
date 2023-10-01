
function getWeather(city) {
    const apiKey = '75c70f998cce8ad4767a2b72894440df';
    const apiUrl = `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${apiKey}`;
  
    fetch(apiUrl)
      .then(response => response.json())
      .then(data => {
        // Extract relevant weather information from the API response
        const temperature = data.main.temp;
        const weatherDescription = data.weather[0].description;
  
        // Display the weather information in the extension
        let temp= temperature-273.15
        const weatherInfo = `Temperature: ${temp}°C, ${weatherDescription}`;
        document.getElementById('weather-info').textContent = weatherInfo;
      })
      .catch(error => {
        console.error('Error fetching weather data:', error);
      });
  }
  
  // Add an event listener to trigger the weather fetching when the form is submitted
  document.addEventListener('DOMContentLoaded', function () {
    const form = document.getElementById('weather-form');
  
    form.addEventListener('submit', function (event) {
      event.preventDefault(); // Prevent the default form submission
  
      const cityInput = document.getElementById('city-input');
      const city = cityInput.value;
  
      if (city) {
        getWeather(city);
      }
    });
  });
  