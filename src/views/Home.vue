<template>
  <div>
    <!-- <Date/> -->
    <div class="commingSoon">
      <div id="background" ref="carousel"></div>
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
    <Films/>
    <!-- <Date/> -->
  </div>
</template>

<script>
import Films from "@/components/Films.vue";
import Date from "@/components/Date.vue";

export default {
  components: {
    Films,
    Date
  },
  data() {
    return {
      carouselIndex: 0
    };
  },
  created() {
    setInterval(this.change, 7000);
  },
  methods: {
    change() {
      let doc = this.$refs.carousel;
      let image = [
        `url('https://i.imgur.com/JrRV1n4.jpg')`,
        `url('https://wallpapercave.com/wp/VmN49xl.jpg')`,
        `url('https://i.pinimg.com/originals/08/0f/c3/080fc325efa248454e59b84be24ea829.jpg')`,
        `url('https://wallpapercave.com/wp/wp2258342.jpg')`,
        `url('https://wallpaperstream.com/wallpapers/full/super-hero/Super-Hero-Ironman-Wallpaper.jpg')`,
        `url('http://images6.fanpop.com/image/photos/35100000/The-Fast-and-the-Furious-Wallpaper-fast-and-furious-35179323-1920-1080.jpg')`
      ];
      doc.style.backgroundImage = image[this.carouselIndex];
      this.carouselIndex = (this.carouselIndex + 1) % image.length;
    }
  }
};
</script>

<style>
/*    Comming Soon     */
.commingSoon {
  font-family: "Roboto", sans-serif;
  overflow: hidden;
  mask-image: linear-gradient(to top, transparent 2%, black 98%);
  height: 100vh;
  z-index: -1000;
}
#background {
  z-index: -1000;
  width: 100%;
  padding-top: 66.64%;
  background-repeat: no-repeat;
  font-family: "Roboto", sans-serif;
  background-size: contain;
  transition: 2s ease;
  background-image: url("http://images6.fanpop.com/image/photos/35100000/The-Fast-and-the-Furious-Wallpaper-fast-and-furious-35179323-1920-1080.jpg");
}
@media screen and (max-width: 1400px) {
  .commingSoon {
    height: 100vh;
  }
}
@media screen and (max-width: 1200px) {
  .commingSoon {
    height: 85vh;
  }
}
@media screen and (max-width: 1000px) {
  .commingSoon {
    height: 70vh;
  }
}
@media screen and (max-width: 800px) {
  .commingSoon {
    height: 45vh;
  }
}
@media screen and (max-width: 600px) {
  .commingSoon {
    height: 30vh;
  }
}
/* Searchbar */
.searchContainer {
  margin: 15px;
  margin-top: 0;
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
/* Movie containers */
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
