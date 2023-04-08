export default {
    name: 'theeventcomponents',

    props: {
       event: Object
    },

    template: `

    <table>
        <thead>
            <tr>
                <th scope="col">Card</th>                        
                <th scope="col">Date</th>
                <th scope="col">Name</th>
                <th scope="col">Text</th>
                <th scope="col">Link</th>
                <th scope="col">Live</th>
                <th scope="col">Photo</th>
            </tr>
        </thead>

        <tbody>
        <tr> 
        <td scope="row" data-label="Card"><br>{{event.card}}</td>
        <td data-label="Date"><br>{{event.date}}</td>
        <td data-label="Name"><br>{{event.name}}</td>
        <td data-label="Text"><br>{{event.text}}</td>
        <td data-label="Link"><br>{{event.link}}</td>
        <td data-label="Live"><br>{{event.live}}</td>
        <td data-label="Photo"><br>{{event.photo}}</td>
        <button type="">Delete</button>
        </tr>
                            
        </tbody>
    </table>             

`
   
}