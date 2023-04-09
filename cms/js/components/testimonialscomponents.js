export default {
    name: 'testimonialcomponents',

    props: {
        testimonial: Object
    },

    template:
     `
    <div v-if="showForm">
        <form :action="'http://localhost:8000/api/testimonials/' + testimonial.id" method="POST" class="edit-blog-form" enctype="multipart/form-data">
        <div class="form-field field-1 short">
        <label for="id">Card id</label>
        <select id="id" name="id">
            <option value="" disabled selected>Select</option>
            <option value="{{testimonial.id}}"> testimonial{{testimonial.id}}</option>
        </select>
        </div>

        <div class="form-field field-2 medium">
            <label for="card">Card Name</label>
            <input id="card" type="text" name="card">
        </div>
        <div class="form-field field-3 medium">
            <label for="name">Name</label>
            <input id="name" type="text" name="name">
        </div>
        <div class="form-field field-4 medium">
            <label for="occupation">Occupation</label>
            <input id="occupation" type="text" name="occupation">
            </div>
        <div class="form-field field-5 medium">
            <label for="text">Body Text</label>
            <textarea id="text" type="text" rows="3" name="text"></textarea>
        </div>
        <div class="form-field field-6 short">
            <label for="image">Image</label>
            <input id="image" type="file" name="image">
        </div>

        <div class="inline-form">
            <button v-on:click="updateTestimonial(testimonial.id)" type="submit">Update</button>
            </div>
        </form>
        <button class="black" v-on:click="showForm = false">Cancel</button>  
        <hr>
    </div>

    <div class="inline-form box" v-if="box">
    <p>Are you sure you want to delete this item?</p>
    <button v-on:click="deleteTestimonial(testimonial.id)">Detete</button>
    <button class="black" v-on:click="box = false">Cancel</button> 
    </div>

    <table>
        <tbody>
        <tr>
        <td><button v-on:click="showForm = true">Update</button></td>
        <td scope="row" data-label="Card id"><br>{{testimonial.id}}</td><br>  
        <td scope="row" data-label="Card"><br>{{testimonial.card}}</td><br>    
        <td data-label="Image"><br>{{testimonial.image}}</td><br>
        <td data-label="Name"><br>{{testimonial.name}}</td><br>
        <td data-label="Occupation"><br>{{testimonial.occupation}}</td><br>
        <td data-label="Text"><br>{{testimonial.text}}</td><br>
        <td><button v-on:click="box = true">Detete</button></td>  
        </tr>
                            
        </tbody>
    </table>             

`,


    data() {
        return {
            testimonialData:{},
            showForm: false,
            box: false,
        }
    },

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
          },

          updateTestimonial(id) {
            console.log("id", id); // Verificar o valor de "id" aqui
            fetch('http://localhost:8000/api/testimonials/'+ id ,{
              method:  'PUT',
            })
                .then(response => response.json())
                .then(data => {console.log(data);
                this.testimonialData = data;
            })
                .catch(err => console.log)
          },


    },

    
}