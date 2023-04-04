export default {
    name: 'theprojectcomponents',

    props: {
        portfolio: Object
    },

    template: `


    <div class="box1">
    <img class="event_img" :src='"images/" + portfolio.images' alt="register11">
    <h2 class="heading3">
        {{ portfolio.name}}
    </h2>
    <!-- date -->
    <div class="lower">
        <div class="left">
            <p class="date">
                {{ portfolio.date}}
            </p>
            <p class=date2>
                {{ portfolio.Description}}
            </p>
        </div>
        <!-- button -->
        <div class="button_container2">
            <a href=" {{ portfolio.live_link }} " :class="[portfolio.button_class || 'btn11']"> 
            {{ portfolio.link_name}}
            </a>
        </div>

    </div>
</div>     




`
   
}