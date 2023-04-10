export default {
    name: 'theeventcomponents',

    props: {
       event: Object
    },

    template: `

<div class="box11">
<img :src='"http://localhost:8000/photos/" +event.photo' class="testimonial_img" alt="foto card">

<div class="lower3">
    <h2 class="heading3">{{event.name}}</h2>
    <p class="date">{{event.date}}</p>
    <p class="date3">
    {{event.text}}
    </p>
    <a href="form.html" class="button-register">{{event.link}}</a>
</div>
</div>  

`
   
}