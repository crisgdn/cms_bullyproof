import theeventcomponents from './components/theeventcomponents.js';
import testimonialcomponents from './components/testimonialcomponents.js';



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

// creating the vue app
const app1 = Vue.createApp({
    created() {
      // creating a fetch call from script/json.php to get the data from the database
      fetch('http://localhost:8000/api/events')//fetch api http://localhost:8000/api/events/
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
      
  },

  methods: {

    

  }
})
app1.mount('#app1');

const app2 = Vue.createApp({
    created() {
      // creating a fetch call from script/json.php to get the data from the database
      fetch('http://localhost:8000/api/testimonials')//fetch api 
      .then(res => res.json())
      .then(data => {
          console.log(data);
          this.testimonialData = data;
      })
      .catch((err) => {

          console.error(err);
      })
  },


  data() {
      return {
          testimonialData:{},
      }
  },

  components: {
    testimonialtag:testimonialcomponents,
  },

  methods: {

    

  }
})
app2.mount('#app2');



