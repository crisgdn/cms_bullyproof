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

    <button type="">Delete</button>
    </tr>
                        
    </tbody>
</table> 

`
   
}