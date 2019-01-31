<template>
  <div class="booking">
    <div class="movieBackground">
      <div class="movieFilter">
        <div class="movieImg">
          <img :src="movie.images" width="180px" height="250px">
        </div>
        <div class="movieInfo">
          <ul class="infoList">
            <h1>{{movie.title}}</h1>
            <p>{{movie.length}} | {{movie.genre}} | {{movie.productionYear}}</p>
            <li>
              <b>Undertext:</b>
              {{movie.subtitles}} | Språk: {{movie.language}}
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
        </div>
      </div>
    </div>
    <section class="ticketWrapper">
      <h2>Antalet biljetter</h2>
      <p>Välj din biljett nedan</p>
      <div class="bookingTickets">
        <ul class="bookingPrice">
          <div class="prisinfo">
            <p>Ordinarie (85kr/st)</p>
            <div class="prices">
              <li>
                <a href="#a" class="button" @click="toDec()">-</a>
              </li>
              <p class="prisNummer">{{inc}}</p>
              <li>
                <a href="#a" class="button" @click="toInc()">+</a>
              </li>
            </div>
          </div>
          <div class="prisinfo">
            <p>Barn (65kr/st)</p>
            <div class="prices">
              <li>
                <a href="#a" class="button" @click="toDec2()">-</a>
              </li>
              <p class="prisNummer">{{inc2}}</p>
              <li>
                <a href="#a" class="button" @click="toInc2()">+</a>
              </li>
            </div>
          </div>
          <div class="prisinfo">
            <p>Pensionär (75kr/st)</p>
            <div class="prices">
              <li>
                <a href="#a" class="button" @click="toDec3()">-</a>
              </li>
              <p class="prisNummer">{{inc3}}</p>
              <li>
                <a href="#a" class="button" @click="toInc3()">+</a>
              </li>
            </div>
          </div>
        </ul>
      </div>
      <section id="totalprice">
        <p>
          Pris:
          <span class="total_price">{{total}} kr</span>
        </p>
      </section>
      <div class="seatArea">
        <div class="seatRow" v-for="seats in rows">
          <label class="seat" v-for="seat in seats" :key="seat">
            <input v-bind:value="seat" type="checkbox">
            <span v-on:click="sits(seat)" class="checkmark"></span>
          </label>
        </div>
      </div>
      <button
        v-on:click.prevent="submit"
        type="submit"
        class="reservategBtn btn btn-outline-success"
      >
        <span>Slutför reservationen {{totalTest}}</span>
      </button>
    </section>
  </div>
</template>

<script>
// @ is an alias to /src
import salonger from "../assets/json/salonger.json";
import movies from "../assets/json/movies.json";

export default {
  name: "home",
  data() {
    return {
      inc: 0,
      inc2: 0,
      inc3: 0,
      ordinarie: 0,
      barn: 0,
      pensionar: 0,
      movie: movies[this.$route.params.index],
      titel: "",
      plats: ""

      // movie: {}
    };
  },
  created() {
    this.$axios
      .get("film.php?id=" + this.$route.params.index + "/booking")
      .then(response => {
        this.movie = response.data;
        this.titel = response.data.title;
        // Visa alla medlemar i konsolen
        console.log(this.movie);
      });
  },
  methods: {
    toInc() {
      this.inc++;
      this.ordinarie += 85;
    },
    toDec() {
      if (this.inc != 0) {
        this.inc--;
        this.ordinarie -= 85;
      }
    },
    toInc2() {
      this.inc2++;
      this.barn += 65;
    },
    toDec2() {
      if (this.inc2 != 0) {
        this.inc2--;
        this.barn -= 65;
      }
    },
    toInc3() {
      this.inc3++;
      this.pensionar += 75;
    },
    toDec3() {
      if (this.inc3 != 0) {
        this.inc3--;
        this.pensionar -= 75;
      }
    },
    submit() {
      this.$axios
        .post("place-order.php", {
          titel: this.titel,
          plats: this.plats,
          pris: this.total
        })
        .then(response => {
          console.log("place order response", response);
        });
    },
    sits(pl) {
      this.plats = pl;
      console.log(this.plats);
    }
  },
  computed: {
    total() {
      return this.ordinarie + this.barn + this.pensionar;
    },
    rows() {
      let count = 1;
      for (let r = 0; r < salonger[0].seatsPerRow.length; r++) {
        let rowData = [];
        let row = salonger[0].seatsPerRow[r];
        for (let i = 0; i < row; i++) {
          rowData.push(count);
          count++;
        }
        salonger[0].seatsPerRow[r] = rowData;
      }
      return salonger[0].seatsPerRow;
    }
  }
};
</script>

<style>
.booking {
  width: 100%;
  height: 100%;
  color: white;
}

.movieBackground {
  background-image: url(https://images7.alphacoders.com/389/389458.jpg);
  background-position: center;
  mask-image: linear-gradient(
    to bottom,
    rgba(0, 0, 0, 1),
    rgba(0, 0, 0, 1),
    rgba(0, 0, 0, 1),
    rgba(0, 0, 0, 1),
    rgba(0, 0, 0, 1),
    rgba(0, 0, 0, 1),
    rgba(0, 0, 0, 1),
    rgba(0, 0, 0, 0)
  );
}

.movieFilter {
  background: rgba(55, 73, 97, 0.6);
  display: flex;
  justify-content: center;
  padding-bottom: 50px;
  margin-bottom: 15px;
}

.infoList {
  padding-left: 30px;
}

.movieImg {
  margin: 30px;
  box-shadow: 0px 0px 8px 2px rgb(26, 29, 33);
}
.movieInfo {
  padding: 30px;
  text-align: left;
}
/* ----------------------------------------- */
.ticketWrapper {
  margin: 15px;
  margin-top: 30px;
  padding: 15px;
  background-color: rgba(129, 131, 132, 0.3);
}

.bookingPrice {
  justify-content: center;
  display: flex;
  flex-direction: row;
}
.bookingPrice li {
  padding: 10px;
  text-align: center;
}

.prices {
  background-color: rgba(129, 131, 132, 0.3);
  display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
  justify-content: flex-start;
  border-radius: 40px;
  margin: 0 10px;
  height: 60px;
}

.button {
  background: linear-gradient(to bottom, #c62d1f 5%, #f24437 100%);
  border-radius: 42px;
  border: 1px solid #d02718;
  display: inline-block;
  cursor: pointer;
  color: #ffffff;
  padding: 7px 15px;
  text-decoration: none;
  text-shadow: 0px 2px 0px #810e05;
}
.button:hover {
  background: linear-gradient(to bottom, #f24437 5%, #c62d1f 100%);
  text-decoration: none;
}
.button:active {
  position: relative;
  top: 1px;
}

.bookingTickets {
  margin: 20px auto;
  max-width: 600px;
}

ul {
  max-width: 700px;
  list-style-type: none;
  padding: 0;
}

.prisNummer {
  vertical-align: middle;
  line-height: 60px;
}
/* ----------------------------------------- */
.seatArea {
  background-color: rgba(0, 0, 0, 0.2);
  display: flex;
  flex-direction: column;
  padding: 30px 15px 15px 15px;
  margin: auto;
}

.seatRow {
  display: flex;
  flex-direction: row;
  width: 100%;
  justify-content: center;
  height: 30px;
}

/* The container */
.seat {
  display: block;
  position: relative;
  padding-left: 30px;
  margin: 0;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default checkbox */
.seat input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

/* Create a custom checkbox */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #eee;
}

/* On mouse-over, add a grey background color */
.seat:hover input ~ .checkmark {
  background-color: rgb(175, 175, 175);
}

/* When the checkbox is checked, add a blue background */
.seat input:checked ~ .checkmark {
  background-color: #2196f3;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the checkmark when checked */
.seat input:checked ~ .checkmark:after {
  display: block;
}

.seat input:disabled ~ .checkmark {
  background-color: rgb(209, 9, 9);
}

.reservategBtn {
  margin-top: 15px;
}

@media screen and (max-width: 900px) {
  .movieFilter {
    flex-direction: column;
  }
  .bookingPrice {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  }
  .ticketWrapper {
    margin: 5px;
  }
  .prices {
    max-width: 130px;
  }
  .prisinfo {
    margin-bottom: 30px;
  }
  .booking {
    width: 100%;
    justify-content: center;
  }
  .movieImg {
    margin-right: auto;
  }
  .movieInfo {
    text-align: left;
    padding: 0px;
  }
  .seatArea {
    padding: 15px;
  }

  .seat {
    padding-left: 27px;
  }

  .seatRow {
    height: 27px;
  }
}
</style>
