export default {
    name: 'theemailcomponents',

    props: {
       email: Object
    },

    template: `
    <table>
    <thead>
        <tr>
            <th scope="col">Name</th><br>                        
            <th scope="col">Email</th><br> 
            <th scope="col">Message</th><br> 
        </tr>
    </thead>

    <tbody>
    <tr>
    <td scope="row" data-label="Name"><br>{{email.name}}</td><br>     
    <td data-label="Email"><br>{{email.email}}</td><br> 
    <td data-label="Message"><br>{{email.message}}</td><br> 

    <td><button v-on:click="deleteEmail(email.id)">Detete</button></td>  
    </tr>
                        
    </tbody>
</table> 

`,
    methods: {        
        deleteEmail(id) {
            console.log("id", id); // Verificar o valor de "id" aqui
            fetch('http://localhost:8000/api/emails/' + id ,{
            method:  'DELETE',
            })
            .then(response => response.json())
            .then(data => {console.log(data);
                this.emailData = data;
            })
            .catch(err => console.log)
        }

    },

    data() {
        return {
            eventData: {},
        }
    },
   
}