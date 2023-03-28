export default {
    name: 'theeventcomponents',

    props: {
       event: Object
    },

    template: `


    <div class="box1">
    <img class="event_img" :src='"images/" +event.images' alt="register11">
    <h2 class="heading3">
        {{event.name}}
    </h2>
    <!-- date -->
    <div class="lower">
        <div class="left">
            <p class="date">
                {{event.date}}
            </p>
            <p class=date2>
                {{event.Description}}
            </p>
        </div>
        <!-- button -->
        <div class="button_container2">
            <a href=" {{event.live_link }} " :class="[event.button_class || 'btn11']"> 
            {{event.link_name}}
            </a>
        </div>

    </div>
</div>     




`
   
}