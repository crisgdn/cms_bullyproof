export default {
    name: 'theemailcomponents',

    props: {
       email: Object
    },

    template: `

    <div class="inline-form box" v-if="box">
    <p>Are you sure you want to delete this item?</p>
    <button v-on:click="deleteEmail(email.id)">Detete</button>
    <button class="black" v-on:click="box = false">Cancel</button> 
    </div>  

    <table>
    <tbody>
    <tr>
    <td scope="row" data-label="Name"><br>{{email.name}}</td><br>     
    <td data-label="Email"><br>{{email.email}}</td><br> 
    <td data-label="Message"><br>{{email.message}}</td><br> 

    <td><button v-on:click="box = true">Detete</button></td>  
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
            emailData: {},
            box: false,
        }
    },
   
}