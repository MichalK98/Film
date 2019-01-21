<template>
    <div>
<!--        <img src="https://ksr-ugc.imgix.net/assets/011/862/852/aff55dfae758c54e0f498e7c4385fad1_original.jpg?ixlib=rb-1.1.0&crop=faces&w=1552&h=873&fit=crop&v=1463705909&auto=format&frame=1&q=92&s=154d68cf35b4e1821d64953b0fe0eb05" alt="cinema" width="100%;">-->
        <div class="aboutContainer">
            <h1>X-men: Apocalypse</h1>
            <p>X-Men: Apocalypse is a 2016 American superhero film based on the fictional X-Men characters that appear in Marvel Comics. It is the ninth installment in the X-Men film series and the sequel to X-Men: Days of Future Past (2014). Directed by Bryan Singer, with a screenplay by Simon Kinberg from a story conceived by Singer, Kinberg, Michael Dougherty, and Dan Harris, the film stars James McAvoy, Michael Fassbender, Jennifer Lawrence, Oscar Isaac, Nicholas Hoult, Rose Byrne, Tye Sheridan, Sophie Turner, Olivia Munn, and Lucas Till. In the film, the ancient mutant En Sabah Nur /Apocalypse awakens in 1983 and plans to wipe out modern civilization and take over the world, leading the X-Men to try to stop him and defeat his team of mutants. This film also shows Stan Lee (Former Marvel Comics writer) in a cameo with his wife Joan. This was her last appearance with her husband in any film as she died soon after.<br><br>

The film was announced by Singer in December 2013, with Kinberg, Dougherty, and Harris attached to develop the story. Casting began in October 2014, while principal photography commenced in April 2015 in Montreal and ended in August of the same year. X-Men: Apocalypse premiered in London on May 9, 2016, and was released in North America on May 27 in 3D and 2D, and in IMAX 3D in select international markets. It received mixed reviews from critics, with praise given to its themes and acting performances, while the action sequences and Apocalypse character were faulted. A sequel titled Dark Phoenix is set for release on June 7, 2019.[3]</p>
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