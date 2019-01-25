<template>
  <div class="info">
    <div class="title">
      <h2 class="display-4 infoTitel">{{movie.title}}</h2>
      <hr class="break">
      <div class="videoPadding">
        <div class="videoWrapper">
          <iframe
            width="560"
            height="349"
            :src="'https://www.youtube.com/embed/' + movie.youtubeTrailers"
            frameborder="5"
            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen
          ></iframe>
        </div>
      </div>
      <hr class="break">
      <p class="description">{{movie.description}}</p>
    </div>
    <ul class="infoList">
      <li>
        <b>Produktion År:</b>
        {{movie.productionYear}}
      </li>
      <li>
        <b>Längd:</b>
        {{movie.length}}
      </li>
      <li>
        <b>Genre:</b>
        {{movie.genre}}
      </li>
      <li>
        <b>Språk:</b>
        {{movie.language}}
      </li>
      <li>
        <b>Undertext:</b>
        {{movie.subtitles}}
      </li>
      <li>
        <b>Producent:</b>
        {{movie.director}}
      </li>
      <li>
        <b>Skådespelare:</b>
        {{movie.actors}}
      </li>
    </ul>
    <button type="button" class="bookingBtn btn btn-outline-success">Boka Nu</button>
  </div>
</template>

<script>
import movies from "../assets/json/movies.json";
export default {
  data() {
    return {
      movie: movies[this.$route.params.index]
    };
  }
};
</script>
<style>
.info {
  padding-top: 15px;
  color: white;
  margin: 15px;
  margin-top: 20px;
  background-color: rgba(129, 131, 132, 0.3);
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

ul {
  max-width: 700px;
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
