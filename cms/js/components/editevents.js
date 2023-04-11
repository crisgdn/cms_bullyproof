export default {
    name: 'eventedit',

    emits: ['closeupdate'],

    props: {
       event: Object
    },

    template: `
    
    <form :action="'http://localhost:8000/api/events/' + event.id" method="POST" class="edit-blog-form" enctype="multipart/form-data">
          <div class="form-field field-1 short">
            <label for="id">Card id</label>
            <select id="id" name="id">
              <option value="" disabled selected>Select</option>
              <option value="{{event.id}}">event{{event.id}}</option>
            </select>
          </div>
          <div class="form-field field-2 medium">
            <label for="card">Card Name</label>
            <input id="card" type="text" name="card">
          </div>

          <div class="form-field field-3 medium">
              <label for="date">Date</label>
              <input id="date" type="text" name="date">
          </div>

          <div class="form-field field-4 medium">
              <label for="name">Name</label>
              <input id="name" type="text" name="name">
          </div>
          
          <div class="form-field field-5 medium">
            <label for="text">Text</label>
            <textarea id="text" type="text" rows="3" name="text"></textarea>
          </div>

          <div class="form-field field-6 medium">
              <label for="link">Button</label>
              <input id="link" type="text" name="link">
          </div>

          <div class="form-field field-7 medium">
              <label for="live">Link Page</label>
              <input id="live" type="url" name="live">
          </div>

          <div class="form-field field-8 short">
            <label for="photo">Photo</label>
            <input id="photo" type="file" name="photo">
          </div>
            
            <div class="inline-form">
            <button v-on:click="updateEvent(event.id)" type="submit">Update</button>
             
            </div>
          </form>
          <button class="red" @click="cancel">Cancel</button> 
          <hr>

          

`,   
    
    methods: {   
        updateEvent(id) {
            console.log("id", id); // Verificar o valor de "id" aqui
            fetch('http://localhost:8000/api/events/'+ id ,{
              method:  'PUT',
            })
                .then(response => response.json())
                .then(data => {console.log(data);
                this.eventData = data;
                alert("successfully updated");
            })
                .catch(err => console.log)
          },

          cancel() {
            this.$emit('closeupdate');
        }

    },

    data() {
        return {
            eventData: {},
        }
    },
    
}