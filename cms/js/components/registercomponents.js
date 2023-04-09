export default {
    name: 'registercomponents',

    props: {
       register: Object
    },

    template: `
    <table>
        <thead>
            <tr>
                <th scope="col">Name</th><br>                        
                <th scope="col">Email</th><br>
                <th scope="col">Events</th><br>
                <th scope="col">Comments</th><br>
            </tr>
        </thead>

        <tbody>
        <tr>
        <td scope="row" data-label="Name"><br>{{register.name}}</td><br>    
        <td data-label="Email"><br>{{register.email}}</td><br>
        <td data-label="Events"><br>{{register.event}}</td><br>
        <td data-label="Comments"><br>{{register.comments}}</td><br>
        <td><button v-on:click="deleteRegister(register.id)">Detete</button></td>  
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
                })
                .catch(err => console.log)
            }

        },

        data() {
            return {
                registerData: {},
            }
        },
   
}