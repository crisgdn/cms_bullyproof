 import theeventcomponents from './components/theeventcomponents.js';


document.addEventListener('DOMContentLoaded', () => {
    // your code here
const navbarToggle = document.querySelector('.navbar-toggle');
const navbarList = document.querySelector('.navbar-list');

navbarToggle.addEventListener('click', () => {
    console.log ('click');
  navbarList.classList.toggle('active');
  navbarToggle.classList.toggle('active');
});
  });

  // handling the success and error function 
  document.addEventListener('DOMContentLoaded', function() {
    var form = document.querySelector('form');
    var successMessage = document.getElementById('success-message');
    var errorMessage = document.getElementById('error-message');

    form.addEventListener('submit', function(event) {
        event.preventDefault();
        var name = document.getElementById('name').value;
        var email = document.getElementById('email').value;
        var message = document.getElementById('message').value;
        // xhr request to send the data to the server
        var xhr = new XMLHttpRequest();
        xhr.open('POST', 'scripts/actionpage.php', true);
        // sending the content type header
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');

      
        // do not let the form submit without a name and email
        if(name === '' || email === '') {
            errorMessage.style.display = 'block';
            return;
        }
            // if everything is ok, send the data to the server
            xhr.onload = function() {
                if(this.status === 200) {
                    successMessage.style.display = 'block';
                    form.reset();
                } else {
                    errorMessage.style.display = 'block';
                }
            }
            // send the data to the server
            

        xhr.send('name=' + name + '&email=' + email + '&message=' + message);
    });

    var closeButtons = document.querySelectorAll('.closebtn');
    for(var i = 0; i < closeButtons.length; i++) {
        closeButtons[i].addEventListener('click', function() {
            this.parentElement.style.display = 'none';
        });
    }
});



// creating the vue app
const { createApp } = Vue

// /scripts/json.php

createApp({
  created() {
    
      // creating a fetch call from script/json.php to get the data from the database
      fetch('http://localhost:8000/api/events/')//fetch api http://localhost:8000/api/events/
      .then(res => res.json())
      .then(data => {
          console.log(data);
          this.eventData = data;
      })
      .catch((err) => {

          console.error(err);
      })
  },



  data() {
      return {
          eventData: {},
      }
  },

  components: {
      eventthumbnail: theeventcomponents,
          // Lightbox: LightBox
  }
}).mount('#app');



