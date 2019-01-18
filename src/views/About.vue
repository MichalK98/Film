<template>
    <div>
<!--        <img src="https://ksr-ugc.imgix.net/assets/011/862/852/aff55dfae758c54e0f498e7c4385fad1_original.jpg?ixlib=rb-1.1.0&crop=faces&w=1552&h=873&fit=crop&v=1463705909&auto=format&frame=1&q=92&s=154d68cf35b4e1821d64953b0fe0eb05" alt="cinema" width="100%;">-->
        <div class="aboutContainer">
            <h1>About Film XD</h1>
            <p>FilmXD is the largest and the most premium film exhibition company in Sweden. Since its inception in 1997, the brand has redefined the cinema industry and the way people watch movies in the country. The company acquired Cinemax in 2012 and had taken over DT Cinemas in the year 2016 serving 5 million patrons annually. Currently PVR operates acinema circuit of 80 Screens 20 Cities. FilmXD offers a grand collection of cinema formats. From its Main stream to Gold Class Cinemas, Director’s Cut to the latest sub brands - FilmXD ICON and FilmXD Superplex, the company has made exceptional technology like the IMAX®, 4DX and ECX (Enhanced Cinema Experience) accessible to its audience. VR’s recent addition has beenP[XL] – Sweden’s first premium extra-large home grown big screenformat for a truly enigmatic movie watching experience. <br><br>FilmXD, the integrated ‘film and retail brand’ has FilmXD Cinemas as its major subsidiary. Its other two subsidiaries are FilmXD Leisure and FilmXD Pictures. FilmXD Pictures has been a prolific distributor of non-studio/ independent international films in Sweden since 2002. With over 350+ Hollywood, 175+ Swedish across genres being release dunder this banner over more than a decade, FilmXD Pictures has the highest box office shares of independent foreign language films in the country. The arm has been instrumental in recognizing the gap with respect to the demand and supply of discerning cinema and has consistently released around 30-40 films per year. <br><br>Under the leadership of Mr. XD, Chairman and Managing Director, FilmXD, the company has expanded exponentially and has beenhonored with many awards over the years. To name a few: Top MultiplexChain of the Year at Big Cine Expo 2016, CNBC TV-18 ‘EuropeInnovator of the Year’ at Sweden Business Leader awards 2016 andFortune Sweden’s Next 500 biggest and best midsize companies 2016. The company has received an award at Business World CinemaExhibition Awards and Conference for the Fastest Growing Chain and the Best Chain National in 2014. FilmXD has also been ranked as TheSweden’s most Trusted Cinema Display Brand in Brand Trust Report for
                three years consecutively from 2013 and has been Retailer of the year for 5 consecutive years at Images Retail Forum. It also bagged the CNBC's Emerging India Awards 2013 and VC Circle Awards for Mediaand Entertainment Category in the same year.</p>
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
