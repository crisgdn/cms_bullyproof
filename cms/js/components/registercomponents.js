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
        <button type="">Delete</button>
        </tr>
                            
        </tbody>
    </table>             

`
   
}