export default {
    name: 'eventsupdate',

    props: {
       eventsup: Object
    },

    template: `

    <form action ="http://localhost:8000/api/events/" method="POST" class="edit-blog-form">
          <div class="form-field field-6 short">
            <label for="id">Card id</label>
            <select id="id" name="id">
              <option value="" disabled selected>Select</option>
              <option value="{{eventsup.id}}">{{eventsup.id}}</option>
            </select>
          </div>
            <div class="form-field field-2 medium">
              <label for="card">Card</label>
              <input id="card" type="text" name="card">
            </div>

            <div class="form-field field-3 medium">
                <label for="date">Date</label>
                <input id="date" type="text" name="date">
            </div>

            <div class="form-field field-3 medium">
                <label for="name">Name</label>
                <input id="name" type="text" name="name">
            </div>
            
            <div class="form-field field-4 medium">
              <label for="text">Text</label>
              <textarea id="text" type="text" rows="3" name="text"></textarea>
            </div>

            <div class="form-field field-3 medium">
                <label for="link">Button</label>
                <input id="link" type="text" name="link">
            </div>

            <div class="form-field field-3 medium">
                <label for="live">Link Page</label>
                <input id="live" type="text" name="live">
            </div>

            <div class="form-field field-5 short">
              <label for="Photo">Photo</label>
              <input id="Photo" type="file" name="Photo">
            </div>
            
            <div class="inline-form">
              <button class="black" type="submit">Update</button>
              <button type="">Cancel</button> <!-- limpar formulario-->
            </div>
     </form>             
   
`
   
}