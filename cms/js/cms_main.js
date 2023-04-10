
import registercomponents from './components/registercomponents.js';
import theemailcomponents from './components/emailcomponents.js';
import theeventcomponents from './components/eventcomponents.js';
import testimonialcomponents from './components/testimonialscomponents.js';
import eventedit from './components/editevents.js';


/*===== EXPANDER MENU  =====*/ 
const showMenu = (toggleId, navbarId, bodyId)=>{
  const toggle = document.getElementById(toggleId),
  navbar = document.getElementById(navbarId),
  bodypadding = document.getElementById(bodyId)

  if(toggle && navbar){
    toggle.addEventListener('click', ()=>{
      navbar.classList.toggle('expander')

      bodypadding.classList.toggle('body-pd')
    })
  }
}
showMenu('nav-toggle','navbar','body-pd')



   /*===== VUE APP  =====*/ 

      // creating the vue app
    const events = Vue.createApp({
      created() {
        // creating a fetch call from script/json.php to get the data from the database
        fetch('http://localhost:8000/api/events')//fetch api http://localhost:8000/api/events/
        .then(res => res.json())
        .then(data => {console.log(data);
            this.eventData = data;
        })
        .catch((err) => {

            console.error(err);
        })
    },

      CreateEvent() {
      
        fetch('http://localhost:8000/api/events/',{
        method:  'POST',
        })
            .then(response => response.json())
            .then(data => {console.log(data);
            this.eventData = data;
            alert("successfully send");
        })
            .catch(err => console.log)
      },



    data() {
        return {
            eventData: {},
            showUpdate:false,
            showForm: false,
        }
    },

    props: {
      event: Object
   },

    components: {
        eventtag: theeventcomponents,
        eventedittag: eventedit        
    },

    methods: {

      loadEventedit(event) {
        this.loadUpdate = event;
        this.showUpdate = true;
        this.showForm = true;
      }
  
    }
    })
    events.mount('#events');
  

    const email = Vue.createApp({
      created() {
        // creating a fetch call from script/json.php to get the data from the database
        fetch('http://localhost:8000/api/emails')//fetch api 
        .then(res => res.json())
        .then(data => {
            console.log(data);
            this.emailData = data;
        })
        .catch((err) => {

            console.error(err);
        })
    },


    data() {
        return {
            emailData:{},
        }
    },

    components: {
      emailtag:theemailcomponents,
    },

    methods: {

    }
    })
    email.mount('#email');

    const register = Vue.createApp({
        created() {
          // creating a fetch call from script/json.php to get the data from the database
          fetch('http://localhost:8000/api/registers')//fetch api 
          .then(res => res.json())
          .then(data => {
              console.log(data);
              this.registerData = data;
          })
          .catch((err) => {
  
              console.error(err);
          })
      },
  
  
      data() {
          return {
            registerData:{},
          }
      },
  
      components: {
        registertag:registercomponents,
      },
  
      methods: {
  
      }
      })
      register.mount('#register');

      const testimonials = Vue.createApp({
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
    
    })
    testimonials.mount('#testimonials');

