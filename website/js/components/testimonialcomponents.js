export default {
    name: 'testimonialcomponents',

    props: {
        testimonial: Object
    },

    template: `

    <div class="box11">
    <img :src='"http://localhost:8000/images/" +testimonial.image' class="testimonial_img" alt="foto card">
        <div class="lower3">
            <p class="date3">
            {{testimonial.text}}
            </p>
            <h3 class="heading11">{{testimonial.name}}</h3>
            <p class="small_words">{{testimonial.occupation}}</p>
        </div>
    </div>


`
   
}