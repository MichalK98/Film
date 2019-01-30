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
    <Films/>
  </div>
</template>

<script>
import Films from "@/components/Films.vue";

export default {
  components: {
    Films
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
