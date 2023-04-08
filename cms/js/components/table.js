export default {
    name: "tabledata",

    emits: ['loadtabledata'],

    props: {
        data: Object
    },

    template: 
   `
    <table @click="loadData">
    <thead>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Events</th>
            <th>Comments</th>
            <th>Delete</th>
        </tr>
    </thead>

    <tbody>
        <tr>
            <td>{{data.name}}</td>
            <td>{{data.email}}</td>
            <td>{{data.email}}</td>
            <td>{{data.email}}</td>
            <td>X</td>
            <button>view project</button>
        </tr>                    
    </tbody>
</table>`

,

    methods: {
        loadData() {
            //pass the individual object back to the main VM
            this.$emit('loadtabledata', this.data);
        }
    }

}