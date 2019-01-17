<template>
    <div>
       <div class="commingSoon">
           <img class="commingSoonImg" src="https://images.alphacoders.com/954/954739.jpg" alt="Comming Soon" width="100%">
       </div>
        <div class="movieTimeContainer">
            <div class="movieTime">
                <h5>12:30</h5>
                <h5>9/11</h5>
            </div>
            <hr>
            <div class="movieGridContainer">
                <div class="movieContainer" style="background-image: url('https://m.media-amazon.com/images/M/MV5BMjU1ODM1MzYxN15BMl5BanBnXkFtZTgwOTA4NDE2ODE@._V1_.jpg'); ">
                    <h2>Titel</h2>
                    <div class="corner"><router-link to="/film" class="nav-link"><span>More</span></router-link></div>
                </div>
                <div class="movieContainer" style="background-image: url('https://m.media-amazon.com/images/M/MV5BMjU1ODM1MzYxN15BMl5BanBnXkFtZTgwOTA4NDE2ODE@._V1_.jpg'); ">
                    <h2>Titel</h2>
                    <div class="corner"><span>More</span></div>
                </div>
                <div class="movieContainer" style="background-image: url('https://m.media-amazon.com/images/M/MV5BMjU1ODM1MzYxN15BMl5BanBnXkFtZTgwOTA4NDE2ODE@._V1_.jpg'); ">
                    <h2>Titel</h2>
                    <div class="corner"><span>More</span></div>
                </div>
            </div>
        </div>
        <div class="movieTimeContainer">
            <div class="movieTime">
                <h5>20:45</h5>
                <h5>9/12</h5>
            </div>
            <hr>
            <div class="movieGridContainer">
                <div class="movieContainer" style="background-image: url('https://m.media-amazon.com/images/M/MV5BMjU1ODM1MzYxN15BMl5BanBnXkFtZTgwOTA4NDE2ODE@._V1_.jpg'); ">
                    <h2>Titel</h2>
                    <div class="corner"><span>More</span></div>
                </div>
                <div class="movieContainer" style="background-image: url('https://m.media-amazon.com/images/M/MV5BMjU1ODM1MzYxN15BMl5BanBnXkFtZTgwOTA4NDE2ODE@._V1_.jpg'); ">
                    <h2>Titel</h2>
                    <div class="corner"><span>More</span></div>
                </div>
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
    .commingSoonImg{
        mask-image: linear-gradient(to bottom, rgba(0,0,0,1), rgba(0,0,0,1), rgba(0,0,0,1), rgba(0,0,0,0));
        
    }

    .movieTimeContainer {
        margin: 15px;
        background-color: rgba(129, 131, 132, .3);
    }

    .movieTimeContainer h5 {
        text-align: left;
        color: white;
        padding: 30px 30px 0px;
    }

    .movieTimeContainer hr {
        background-color: white;
        margin: 0 30px;
    }

    .movieGridContainer {
        display: grid;
        grid-template-columns: 1fr 1fr;
    }

    .movieTime {
        display: flex;
    }
    
    .movieTime h5 {
        flex: 1;
    }
    
    .movieTime h5:nth-child(2) {
        text-align: right;
    }
    
    .movieContainer {
        margin: 15px auto;
        background-size: cover;
        background-position: center;
        position: relative;
        background-color: grey;
        width: calc(100% - 60px);
        max-width: 400px;
        min-height: 600px;
        box-shadow: 0px 0px 15px rgb(200, 200, 200);
    }

    .corner {
        width: 0;
        height: 0;
        border-bottom: 150px solid rgba(224, 52, 17, .9);
        border-top: 150px solid transparent;
        border-left: 150px solid transparent;
        position: absolute;
        right: 0;
        bottom: 0;
    }

    .corner span {
        cursor: pointer;
        position: absolute;
        bottom: -110px;
        width: 100px;
        left: -100px;
        text-align: center;
        font-size: 16px;
        display: block;
        color: white;
    }

    @media screen and (max-width: 900px) {
        .movieGridContainer {
            display: grid;
            grid-template-columns: 1fr;
        }
    }

</style>
