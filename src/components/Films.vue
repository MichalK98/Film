<template>
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
      <div v-for="(film, i) in films" :key="i">
        <div class="movieContainer" :style="{ backgroundImage: `url('${film.images}')` }">
          <h2 class="movieTitel">{{film.title}}</h2>
          <!--More button-->
          <div class="corner">
            <router-link :to="'/film/' + film.ID" class="nav-link">
              <span>Mer</span>
            </router-link>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Films",
  data() {
    return {
      films: []
    };
  },
  created() {
    this.$axios.get("films.php").then(response => {
      this.films = response.data;
      // console.log(this.films);
    });
  }
};
</script>

<style>
.working {
  height: 300px;
  width: 300px;
  background-color: red;
}
</style>
