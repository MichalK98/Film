<template>
  <!--Time container-->
  <div class="movieTimeContainer">
    <div class="movieTime">
      <h5>12:30</h5>
      <h5>{{title[1].Date}}</h5>
    </div>
    <hr>
    <!--Movie grid-->
  </div>
</template>

<script>
export default {
  name: "Date",
  data() {
    return {
      date: [],
      title: []
    };
  },
  created() {
    this.$axios.get("date.php").then(response => {
      this.date = response.data;
      console.log(this.date);
      console.log(this.date[1]);
      let section = this.date[1];
      this.title = response.data;
      console.log(this.title);
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
