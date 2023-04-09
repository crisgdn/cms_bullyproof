export default {
    name: 'testimonialcomponents',

    props: {
        testimonial: Object
    },

    template: `
    <table>
        <thead>
            <tr>
                <th scope="col">Card</th><br>                        
                <th scope="col">Image</th><br>
                <th scope="col">Name</th><br>
                <th scope="col">Occupation</th><br>
                <th scope="col">Text</th><br>
            </tr>
        </thead>

        <tbody>
        <tr>
        <td scope="row" data-label="Card id"><br>{{testimonial.id}}</td><br>  
        <td scope="row" data-label="Card"><br>{{testimonial.card}}</td><br>    
        <td data-label="Image"><br>{{testimonial.image}}</td><br>
        <td data-label="Name"><br>{{testimonial.name}}</td><br>
        <td data-label="Occupation"><br>{{testimonial.occupation}}</td><br>
        <td data-label="Text"><br>{{testimonial.text}}</td><br>
        <td><button v-on:click="deleteTestimonial(testimonial.id)">Detete</button></td>   
        </tr>
                            
        </tbody>
    </table>             

`,
   methods: {        
     deleteTestimonial(id) {
            console.log("id", id); // Verificar o valor de "id" aqui
            fetch('http://localhost:8000/api/testimonials/' + id ,{
              method:  'DELETE',
            })
              .then(response => response.json())
              .then(data => {console.log(data);
                this.testimonialData = data;
            })
              .catch(err => console.log)
          }

    },

    data() {
        return {
            testimonialData:{},
        }
    },
}