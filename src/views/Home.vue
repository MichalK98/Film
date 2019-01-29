<template>
<div>
  <div class=commingSoon>
    <div id="background" ref="carousel">
   </div>
   </div>
    <div class="searchContainer">
      <form class="form-inline">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <div class="btn-group">
          <button
            type="button"
            class="btn btn-secondary dropdown-toggle"
            data-toggle="dropdown"
            aria-haspopup="true"
            aria-expanded="false"
          ></button>
          <div class="dropdown-menu dropdown-menu-right">
            <button class="dropdown-item" type="button">Action</button>
          </div>
        </div>
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      </form>
    </div>
    <!--Time container-->
    <div class="movieTimeContainer">
      <div class="movieTime">
        <h5>12:30</h5>
        <h5>9/11</h5>
      </div>
      <hr>
      <!--Movie grid-->
      <div class="movieGridContainer">
        <!--Movie-->
        <div v-for="(item, i) in items" :key="i">
          <div class="movieContainer" :style="{ backgroundImage: `url('${item.images}')` }">
            <h2 class="movieTitel">{{item.title}}</h2>
            <!--More button-->
            <div class="corner">
              <router-link :to="'/film/' + i" class="nav-link">
                <span>Mer</span>
              </router-link>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="movieTimeContainer">
      <div class="movieTime">
        <h5>20:45</h5>
        <h5>9/12</h5>
      </div>
      <hr>
      <!--Movie grid-->
      <div class="movieGridContainer">
        <!--Movie-->
        <div v-for="(item, i) in items" :key="i">
          <div class="movieContainer" :style="{ backgroundImage: `url('${item.images}')` }">
            <h2 class="movieTitel">{{item.title}}</h2>
            <!--More button-->
            <div class="corner">
              <router-link :to="'/film/' + i" class="nav-link">
                <span>Mer</span>
              </router-link>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="komandeFilmGridContainer">
      <h1>Kommande film</h1>
      <hr>
      <div class="row">
        <div
          v-for="(kommandeFilm, i) in kommandeFilmer"
          :key="i"
          class="kommandeFilmContainer"
          :style="{ backgroundImage: `url('${kommandeFilm.image}')` }"
        >
          <h2>{{kommandeFilm.title}}</h2>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import movies from "../assets/json/movies.json";
import kommandeFilmer from "../assets/json/kommandeFilmer.json";

export default {
  name: "hello",
  data() {
    return {
      items: movies,
      kommandeFilmer: kommandeFilmer,
      carouselIndex :0

    };
  },
  created(){

    setTimeout(this.change, 500);
    setInterval(this.change, 10000);
  },
  methods:{
    change() {

      let doc = this.$refs.carousel;
        let text = ["Bird Box", "Bee", "A star is born", "Snowden"]

      let image = [`url('https://m.media-amazon.com/images/M/MV5BZWIwY2RjZjMtNGIzNC00ZGNjLTgyMzMtMzgwMzg0ODIyZmE5XkEyXkFqcGdeQXRodW1ibmFpbC1pbml0aWFsaXplcg@@._V1_.jpg')`,`url('http://www.gp.se/image/policy:1.251235:1462491951/Bild-1.jpg?f=Wide&w=1024&$p$f$w=c874468')`,`url('https://d350x4n02brjm.cloudfront.net/event_images/UqM0PX6tPuiRrbgKVIeYWTNBtX2rQKXhx3yVGryh.png')`,`
      url('https://static.rogerebert.com/uploads/review/primary_image/reviews/bohemian-rhapsody-2018/hero_bohemian-rhapsody-image.jpg')`];
          doc.style.backgroundImage = image[this.carouselIndex];
      this.carouselIndex++;
      //i = (i + 1) % image.length;

      
    }
  }
};
</script>

<style>
/*    Comming Soon     */
.commingSoon {
  height: 100vh;
  width: 100vw;
  background: rgba(129, 131, 132, 0.3);
  font-family: 'Roboto', sans-serif;
  overflow: hidden;
  mask-image: linear-gradient(
   to bottom,
   rgba(0, 0, 0, 1),
   rgba(0, 0, 0, 1),
   rgba(0, 0, 0, 1),
   rgba(0, 0, 0, 0)
 );
}
#background{
    height: 100%;
    width: 100%;
    background-repeat: no-repeat;
    background-color: rgba(129, 131, 132, 0.3);  font-family: 'Roboto', sans-serif;
    overflow: hidden;
    background-size: cover;
 
}

/*    Searchbar     */
.searchContainer {
  margin: 15px;
  background-color: rgba(129, 131, 132, 0.3);
}

.searchContainer .form-inline {
  padding: 15px;
  display: flex;
}

.searchContainer .form-inline input {
  padding: 15px;
  max-width: 400px;
  flex: 1;
}

.btn-group button {
  margin-right: 15px;
}

/*    Movie containers     */
.movieTimeContainer {
  margin: 15px;
  background-color: rgba(129, 131, 132, 0.3);
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

.movieTimeContainer {
  margin: 15px;
  background-color: rgba(129, 131, 132, 0.3);
}

.row {
  margin-left: 4px !important;
  margin-right: 4px !important;
}

.komandeFilmGridContainer {
  margin: 15px;
  background-color: rgba(129, 131, 132, 0.3);
}

.kommandeFilmContainer h2 {
  background: rgba(26, 29, 33, 0.9);
  border-width: 40px;
  color: white;
  font-size: 150%;
  padding: 5px;
}

.komandeFilmGridContainer hr {
  background-color: white;
  margin: 0 30px;
}

h1 {
  color: white !important;
  padding-top: 15px;
}

.kommandeFilmContainer {
  margin: 15px;
  height: 300px;
  width: 280px;
  margin: 15px auto;
  background-size: cover;
  box-shadow: 0px 0px 8px 2px rgb(26, 29, 33);
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
  box-shadow: 0px 0px 8px 2px rgb(26, 29, 33);
}

.movieTitel {
  background-color: rgba(26, 29, 33, 0.9);
  color: white;
  font-size: 150%;
  padding: 5px;
}

.corner {
  width: 0;
  height: 0;
  border-bottom: 150px solid rgba(26, 29, 33, 0.9);
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

@media screen and (min-width: 1400px) {
  .movieGridContainer {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
  }
}
</style>
