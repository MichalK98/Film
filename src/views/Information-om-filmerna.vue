<template>
    <div>
<!--        <img src="https://ksr-ugc.imgix.net/assets/011/862/852/aff55dfae758c54e0f498e7c4385fad1_original.jpg?ixlib=rb-1.1.0&crop=faces&w=1552&h=873&fit=crop&v=1463705909&auto=format&frame=1&q=92&s=154d68cf35b4e1821d64953b0fe0eb05" alt="cinema" width="100%;">-->
        <div class="aboutContainer" v-for="(item, i) in info"
			:key="i">
            <h1>{{item.title}}</h1>
            <p v-html="item.info"></p>
        </div>
    </div>
</template>

<script>
    // @ is an alias to /src
    import HelloWorld from '@/components/HelloWorld.vue'
    import movieInfos from '@/assets/json/information-om-filmerna.json'

    export default {
        name: 'home',
        components: {
            HelloWorld
        },
        data() {
            return {
                info: movieInfos
            }
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