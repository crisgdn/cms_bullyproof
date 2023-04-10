export default {
    name: 'registercomponents',

    props: {
       register: Object
    },

    template: `

    <div class="inline-form box" v-if="box">
    <p>Are you sure you want to delete this item?</p>
    <button v-on:click="deleteRegister(register.id)">Detete</button>
    <button class="black" v-on:click="box = false">Cancel</button> 
    </div>  

    <table>
       
        <tbody>
        <tr>
        <td scope="row" data-label="Name"><br>{{register.name}}</td><br>    
        <td data-label="Email"><br>{{register.email}}</td><br>
        <td data-label="Events"><br>{{register.event}}</td><br>
        <td data-label="Comments"><br>{{register.comments}}</td><br>
        <td><button v-on:click="box = true">Detete</button></td>  
        </tr>
                            
        </tbody>
    </table>             

`,
        methods: {        
            deleteRegister(id) {
                console.log("id", id); // Verificar o valor de "id" aqui
                fetch('http://localhost:8000/api/registers/' + id ,{
                method:  'DELETE',
                })
                .then(response => response.json())
                .then(data => {console.log(data);
                    this.registerData = data;
                    alert("DELETED");
                    window.location.reload(); // recarregar a página
                })
                .catch(err => console.log)
            }

        },

        data() {
            return {
                registerData: {},
                box: false,
            }
        },
   
}