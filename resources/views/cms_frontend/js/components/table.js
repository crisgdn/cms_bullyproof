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

    `<div class="two-items" @click="loadData">
        <img :src='"images/"+ project.intropic' loading="lazy" width="390" alt="" class="image-2">
        <div id="project-box" class="project-description">
        <div class="type">{{project.type}}</div>
        <div class="place">{{project.place}}</div>
        <h3>{{project.title}}</h3>
        <p class="paragraph">{{project.description}}</p>
        <button>view project</button>
        </div>
    </div>
    `,

    methods: {
        loadData() {
            //pass the individual object back to the main VM
            this.$emit('loadtabledata', this.data);
        }
    }

}