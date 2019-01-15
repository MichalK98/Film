<template>
    <div>
        <div class="movieTimeContainer">
           <h5>12:30</h5>
           <hr>
            <div class="movieContainer" style="background-image: url('https://m.media-amazon.com/images/M/MV5BMjU1ODM1MzYxN15BMl5BanBnXkFtZTgwOTA4NDE2ODE@._V1_.jpg'); ">
                <h2>Titel</h2>
                <div class="corner"><span>More</span></div>
            </div>
            <div class="movieContainer" style="background-image: url('https://m.media-amazon.com/images/M/MV5BMjU1ODM1MzYxN15BMl5BanBnXkFtZTgwOTA4NDE2ODE@._V1_.jpg'); ">
                <h2>Titel</h2>
                <div class="corner"><span>More</span></div>
            </div>
        </div>
        <div class="movieTimeContainer">
           <h5>20:45</h5>
           <hr>
            <div class="movieContainer" style="background-image: url('https://m.media-amazon.com/images/M/MV5BMjU1ODM1MzYxN15BMl5BanBnXkFtZTgwOTA4NDE2ODE@._V1_.jpg'); ">
                <h2>Titel</h2>
                <div class="corner"><span>More</span></div>
            </div>
        </div>
    </div>
</template>

<script>
    // @ is an alias to /src
    import HelloWorld from '@/components/HelloWorld.vue'

    export default {
        name: 'home',
        components: {
            HelloWorld
        }
    }

</script>

<style>
    
    .movieTimeContainer{
        margin: 15px;
        background-color: grey;
    }
    
    .movieTimeContainer h5{
        text-align: left;
        color: white;
        padding: 30px 30px 0px;
    }
    
    .movieTimeContainer hr{
        background-color: white;
        margin: 0 30px;
    }

    .movieContainer {
        margin: 30px;
        background-size: cover;
        background-position: center;
        position: relative;
        background-color: grey;
        min-height: 700px;
    }

    .corner {
        width: 0;
        height: 0;
        border-bottom: 150px solid red;
        border-top: 150px solid transparent;
        border-left: 150px solid transparent;
        position: absolute;
        right: 0;
        bottom: 0;
    }

    .corner span {
        position: absolute;
        bottom: -110px;
        width: 100px;
        left: -100px;
        text-align: center;
        font-size: 16px;
        display: block;
        color: white;
    }

</style>
