<template>
    <div>
<!--        <img src="https://ksr-ugc.imgix.net/assets/011/862/852/aff55dfae758c54e0f498e7c4385fad1_original.jpg?ixlib=rb-1.1.0&crop=faces&w=1552&h=873&fit=crop&v=1463705909&auto=format&frame=1&q=92&s=154d68cf35b4e1821d64953b0fe0eb05" alt="cinema" width="100%;">-->
        <div class="aboutContainer">
            <h1>Call me by your name</h1>
            <p>Call Me by Your Name (Italian: Chiamami col tuo nome) is a 2017 coming-of-age romantic drama film directed by Luca Guadagnino and with a screenplay by James Ivory based on André Aciman's 2007 novel of the same name. The film is the final installment in Guadagnino's thematic "Desire" trilogy, after his 2009 film I Am Love and his 2015 film A Bigger Splash. Set in northern Italy in 1983, Call Me by Your Name chronicles a romantic relationship between 17-year-old Elio Perlman (Timothée Chalamet) and his professor father's 24-year-old graduate-student assistant Oliver (Armie Hammer). The film also stars Michael Stuhlbarg, Amira Casar, Esther Garrel, and Victoire Du Bois.<br><br>

The film began development in 2007, when producers Peter Spears and Howard Rosenman optioned the screen rights to Aciman's novel. Ivory served as the screenwriter and co-producer; he was initially set to co-direct the film but stepped down in 2016. Guadagnino joined the project as a location consultant and eventually became director and co-producer. The film was financed by several international companies. Principal photography took place mainly in Crema, Italy in May and June 2016. The filmmakers spent weeks before production decorating the Villa Albergoni, one of the main filming locations. Cinematographer Sayombhu Mukdeeprom shot the film on 35 mm film. Guadagnino curated the selection for the film's soundtrack, which features three original songs by Sufjan Stevens.<br><br>

Sony Pictures Classics acquired distribution rights to Call Me by Your Name before its world premiere at the 2017 Sundance Film Festival on January 22, 2017. It began a limited release in the United States on November 24, 2017, and went to general release on January 19, 2018. The film gained accolades for its screenplay, direction, acting, and music. At the 90th Academy Awards, it received four nominations, including Best Picture, and won for Best Adapted Screenplay. Ivory also won awards for his screenplay at the 23rd Critics' Choice Awards, the 70th Writers Guild of America Awards, and the 71st British Academy Film Awards. A sequel to the film was announced in January 2018.</p>
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