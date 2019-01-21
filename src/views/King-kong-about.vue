<template>
    <div>
<!--        <img src="https://ksr-ugc.imgix.net/assets/011/862/852/aff55dfae758c54e0f498e7c4385fad1_original.jpg?ixlib=rb-1.1.0&crop=faces&w=1552&h=873&fit=crop&v=1463705909&auto=format&frame=1&q=92&s=154d68cf35b4e1821d64953b0fe0eb05" alt="cinema" width="100%;">-->
        <div class="aboutContainer">
            <h1>King Kong</h1>
            <p>King Kong is a giant movie monster, resembling an enormous gorilla, that has appeared in various media since 1933. The character first appeared in the 1933 film King Kong from RKO Pictures, which received universal acclaim upon its initial release and re-releases. A sequel quickly followed that same year with The Son of Kong, featuring Little Kong. In the 1960s, Toho produced King Kong vs. Godzilla (1962), pitting a larger Kong against Toho's own Godzilla, and King Kong Escapes (1967), based on The King Kong Show (1966–1969) from Rankin/Bass Productions. In 1976, Dino De Laurentiis produced a modern remake of the original film directed by John Guillermin. A sequel, King Kong Lives, followed a decade later featuring a Lady Kong. Another remake of the original, this time set in 1933, was released in 2005 from filmmaker Peter Jackson.<br><br>

The most recent film, Kong: Skull Island (2017), set in 1973, is part of Legendary Entertainment's MonsterVerse, which began with Legendary's reboot of Godzilla in 2014. A crossover sequel, Godzilla vs. Kong, once again pitting the characters against one another, is currently planned for 2020.<br><br>

The character King Kong has become one of the world's most famous movie icons, having inspired a number of sequels, remakes, spin-offs, imitators, parodies, cartoons, books, comics, video games, theme park rides, and a stage play.[4] His role in the different narratives varies, ranging from a rampaging monster to a tragic antihero.</p>
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