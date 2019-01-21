<template>
    <div>
<!--        <img src="https://ksr-ugc.imgix.net/assets/011/862/852/aff55dfae758c54e0f498e7c4385fad1_original.jpg?ixlib=rb-1.1.0&crop=faces&w=1552&h=873&fit=crop&v=1463705909&auto=format&frame=1&q=92&s=154d68cf35b4e1821d64953b0fe0eb05" alt="cinema" width="100%;">-->
        <div class="aboutContainer">
            <h1>Information om filmerna</h1>
            <p>Morbi mattis ullamcorper velit. Vivamus laoreet. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Curabitur at lacus ac velit ornare lobortis. Pellentesque dapibus hendrerit tortor.<br><br>

Ut non enim eleifend felis pretium feugiat. Fusce vel dui. Aliquam eu nunc. Vestibulum eu odio. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus.<br><br>

Nunc nec neque. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Nunc nulla. In hac habitasse platea dictumst. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo.<br><br>

Cras sagittis. Pellentesque ut neque. Curabitur at lacus ac velit ornare lobortis. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus.<br><br>

Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Etiam rhoncus. In turpis. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Cras ultricies mi eu turpis hendrerit fringilla.</p>
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
    .aboutContainer {
        margin: 15px;
        background-color: rgba(129, 131, 132, .3);
        /*        background-size: cover;*/
        /*        background-position: center;*/
        /*        position: relative;*/
        color: white;
        /*        width: calc(100% - 60px);*/
        /*        min-height: 600px;*/
    }

    .aboutContainer p {
        text-align: left;
        max-width: 1000px;
        margin: 15px auto;
        padding: 15px;
    }

    @media screen and (max-width: 900px) {
        .movieGridContainer {
            display: grid;
            grid-template-columns: 1fr;
        }
    }

</style>