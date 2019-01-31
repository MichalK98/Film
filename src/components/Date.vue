<template>
  <!--Time container-->
  <!-- <h5>{{event.movie.genre}}</h5>
  <h2>{{event.time}}</h2>-->
  <div class="movieTimeContainer">
    <div class="movieTime" v-for="day in eventsList">
      <h5>{{day.date}}</h5>
      <hr>
      <div class="movieGridContainer">
        <div v-for="event in day.events">
          <div class="movieContainer" :style="{ backgroundImage: `url('${event.images}')` }">
            <h2 class="movieTitel">
              {{event.title}} |
              <span>{{event.time}}</span>
            </h2>
            <div class="corner">
              <router-link :to="'/film/' + event.ID" class="nav-link">
                <span>Mer</span>
              </router-link>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Date",
  data() {
    return {
      date: [],
      title: [],
      eventsList: []
    };
  },
  created() {
    this.$axios.get("films.php").then(response => {
      let films = response.data;
      let filmsHash = {};
      for (let film of films) {
        filmsHash[film.title] = film;
      }
      this.$axios.get("date.php").then(response => {
        let events = response.data;
        console.log("event", events);
        let eventsHash = {};
        for (let event of events) {
          let date = event.Date.split(" ")[0];
          let time = event.Date.split(" ")[1];
          if (!eventsHash[date]) {
            eventsHash[date] = [];
          }
          event.time = time;
          event.movie = filmsHash[event.title];
          eventsHash[date].push(event);
        }
        console.log("eventsHash", eventsHash);
        //

        this.eventsList = [];
        for (let date in eventsHash) {
          this.eventsList.push({
            date: date,
            events: eventsHash[date]
          });
        }
      });
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
