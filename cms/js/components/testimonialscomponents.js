export default {
    name: 'testimonialcomponents',

    props: {
        testimonial: Object
    },

    template: `
    <table>
        <thead>
            <tr>
                <th scope="col">Card</th><br>                        
                <th scope="col">Image</th><br>
                <th scope="col">Name</th><br>
                <th scope="col">Occupation</th><br>
                <th scope="col">Text</th><br>
            </tr>
        </thead>

        <tbody>
        <tr>
        <td scope="row" data-label="Card"><br>{{testimonial.card}}</td><br>    
        <td data-label="Image"><br>{{testimonial.image}}</td><br>
        <td data-label="Name"><br>{{testimonial.name}}</td><br>
        <td data-label="Occupation"><br>{{testimonial.occupation}}</td><br>
        <td data-label="Text"><br>{{testimonial.text}}</td><br>
        <button type="">Delete</button>
        </tr>
                            
        </tbody>
    </table>             

`
   
}