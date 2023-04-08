import axios from 'axios'

export default {
    name: 'theeventcomponents',

    props: {
       event: Object
    },

    template: `

    <table>
        <tbody>
        <tr> 
        <td scope="row" data-label="ID"><br>{{event.id}}</td>
        <td scope="row" data-label="Card"><br>{{event.card}}</td>
        <td data-label="Date"><br>{{event.date}}</td>
        <td data-label="Name"><br>{{event.name}}</td>
        <td data-label="Text"><br>{{event.text}}</td>
        <td data-label="Link"><br>{{event.link}}</td>
        <td data-label="Live"><br>{{event.live}}</td>
        <td data-label="Photo"><br>{{event.photo}}</td>
        <td><button v-on:click="deleteEvent(event.id)">Detete</button></td>     
        </tr>        
        </tbody>        
    </table>         

`,
    mounted(){
      this.getEvents();
    },
        
    
    methods: {

            deleteEvent(id){
                //pass the individual object back to the main VM
                this.axios.delete("http://localhost:8000/api/events/"+id);
                // this.eventData.delete("http://localhost:8000/api/events/"+id);
            }
}
   
}