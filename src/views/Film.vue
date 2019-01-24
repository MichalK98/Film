<template>
    <div class="info">
        <div class="title">
            <h2 class="display-4 infoTitel">X-Men: Apocalypse</h2>
            <hr class="break">
            <div class="videoPadding">
                <div class="videoWrapper">
                    <iframe width=560 height="349" src="https://www.youtube.com/embed/COvnHv42T-A" frameborder="5" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                    </iframe>
                </div>
            </div>
            <hr class="break">
            <p class="description">
                Raven Darkholme / Mystique som fått veta vad som hänt hennes vän Magneto, försöker spåra upp honom och tar hjälp av Charles Xavier och hans telepatiförstärkningsmaskin, Cerebro. När En Sabah Nur känner Xaviers kraft ger det honom möjlighet att styra varenda människa på jorden och han bryter sig därför in på Xaviers skola och kidnappar Xavier.</p>

        </div>
        <ul class="infoList">
            <li><b>Produktion Länder: </b>USA</li>
            <li><b>Produktion År: </b>2016</li>
            <li><b>Längd:</b> 147min</li>
            <li><b>Genre: </b>Action, Äventyr, Science Fiction</li>
            <li><b>Distribution: </b> Marvel Studios</li>
            <li><b>Språk:</b> Engelska</li>
            <li><b>Undertext:</b> Svenska</li>
            <li><b>Producent:</b> Lauren Shuler Donner</li>
            <li><b>Skådespelare:</b> James McAvoy, Michael Fassbender m.m.</li>

        </ul>
        <button type="button" class="bookingBtn btn btn-outline-success">Boka Nu</button>
    </div>
</template>


<style>
    .info {
        padding-top: 15px;
        color: white;
        margin: 15px;
        margin-top: 20px;
        background-color: rgba(129, 131, 132, .3);
    }

    .videoPadding {
        padding: 0 20%;
    }

    .videoWrapper {
        position: relative;
        padding-bottom: 56.25%;
        /* 16:9 */
        padding-top: 25px;
        height: 0;
        box-shadow: 0px 0px 8px 2px rgb(26, 29, 33);
    }

    .videoWrapper iframe {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
    }

    .break {
        border: solid 0.5px;
        color: white;
        margin: 15px 30px;
    }

    .description {
        margin: 15px 30px;
        text-align: left;
    }

    .infoList {
        list-style-type: none;
        text-align: left;
        margin-top: 15px;
    }

    .bookingBtn {
        padding: 5px 50px;
        margin-bottom: 15px;
    }


    @media screen and (max-width: 900px) {
        .videoPadding {
            padding: 0 10%;
        }

        .infoTitel {
            font-size: 200%;
        }
    }

    @media screen and (max-width: 500px) {
        .info {
            margin: 5px;
        }

        .videoPadding {
            padding: 0 5%;
        }

        .infoTitel {
            font-size: 180%;
            margin-top: 15px;
        }

        .description {
            font-size: 85%;
            margin: 15px;
        }

        .break {
            margin: 15px;
        }
    }

</style>
