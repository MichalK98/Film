<template>

    <div class="booking">
      <div class="plane">
        <div class="columns">
          <ul class="price">

            <li class="1"><a href="#" class="button" v-on:click="toInc">+</a></li>
            <li class="2"><a href="#" class="button">+</a></li>
            <li class="3"><a href="#" class="button">+</a></li>
          </ul>
        </div>
        <button v-on:click="toInc">Öka</button>
        <button v-on:click="toDec">Minska</button>
        <p>Test ett {{inc}}</p>
        <br>

<div class="cockpit">


  <h2>Stora Salongen</h2>
  <h5>Vänligen välj dina platser nedanstående</h5>
</div>

<div class="exit exit--front fuselage">

</div>
<ol class="cabin fuselage">
  <li class="row row--1">
    <ol class="seats1" type="A">
      <li class="seat1">
        <input type="checkbox" id="1A" />
        <label for="1A"></label>
      </li>
      <li class="seat1">
        <input type="checkbox" id="1B" />
        <label for="1B"></label>
      </li>
      <li class="seat1">
        <input type="checkbox" id="1C" />
        <label for="1C"></label>
      </li>
      <li class="seat1">
        <input type="checkbox" disabled id="1D" />
        <label for="1D"></label>
      </li>
      <li class="seat1">
        <input type="checkbox" id="1E" />
        <label for="1E"></label>
      </li>
      <li class="seat1">
        <input type="checkbox" id="1F" />
        <label for="1F"></label>
      </li>
      <li class="seat1">
        <input type="checkbox" id="1G" />
        <label for="1G"></label>
      </li>
      <li class="seat1">
        <input type="checkbox" id="1H" />
        <label for="1H"></label>
      </li>
    </ol>
  </li>
  <li class="row row--2">
    <ol class="seats2" type="A">
      <li class="seat2">
        <input type="checkbox" id="2A" />
        <label for="2A"></label>
      </li>
      <li class="seat2">
        <input type="checkbox" id="2B" />
        <label for="2B"></label>
      </li>
      <li class="seat2">
        <input type="checkbox" id="2C" />
        <label for="2C"></label>
      </li>
      <li class="seat2">
        <input type="checkbox" id="2D" />
        <label for="2D"></label>
      </li>
      <li class="seat2">
        <input type="checkbox" id="2E" />
        <label for="2E"></label>
      </li>
      <li class="seat2">
        <input type="checkbox" id="2F" />
        <label for="2F"></label>
      </li>
      <li class="seat2">
        <input type="checkbox" id="2G" />
        <label for="2G"></label>
      </li>
      <li class="seat2">
        <input type="checkbox" id="2H" />
        <label for="2H"></label>
      </li>
      <li class="seat2">
        <input type="checkbox" id="2I" />
        <label for="2I"></label>
      </li>
    </ol>
  </li>
  <li class="row row--3">
    <ol class="seats3" type="A">
      <li class="seat3">
        <input type="checkbox" id="3A" />
        <label for="3A"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="3B" />
        <label for="3B"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="3C" />
        <label for="3C"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="3D" />
        <label for="3D"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="3E" />
        <label for="3E"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="3F" />
        <label for="3F"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="3G" />
        <label for="3G"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="3H" />
        <label for="3H"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="3I" />
        <label for="3I"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="3J" />
        <label for="3J"></label>
      </li>
    </ol>
  </li>
  <li class="row row--4">
    <ol class="seats3" type="A">
      <li class="seat3">
        <input type="checkbox" id="4A" />
        <label for="4A"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="4B" />
        <label for="4B"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="4C" />
        <label for="4C"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="4D" />
        <label for="4D"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="4E" />
        <label for="4E"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="4F" />
        <label for="4F"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="4G" />
        <label for="4G"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="4H" />
        <label for="4H"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="4I" />
        <label for="4I"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="4J" />
        <label for="4J"></label>
      </li>
    </ol>
  </li>
  <li class="row row--5">
    <ol class="seats3" type="A">
      <li class="seat3">
        <input type="checkbox" id="5A" />
        <label for="5A"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="5B" />
        <label for="5B"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="5C" />
        <label for="5C"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="5D" />
        <label for="5D"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="5E" />
        <label for="5E"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="5F" />
        <label for="5F"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="5G" />
        <label for="5G"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="5H" />
        <label for="5H"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="5I" />
        <label for="5I"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="5J" />
        <label for="5J"></label>
      </li>
    </ol>
  </li>
  <li class="row row--6">
    <ol class="seats3" type="A">
      <li class="seat3">
        <input type="checkbox" id="6A" />
        <label for="6A"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="6B" />
        <label for="6B"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="6C" />
        <label for="6C"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="6D" />
        <label for="6D"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="6E" />
        <label for="6E"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="6F" />
        <label for="6F"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="6G" />
        <label for="6G"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="6H" />
        <label for="6H"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="6I" />
        <label for="6I"></label>
      </li>
      <li class="seat3">
        <input type="checkbox" id="6J" />
        <label for="6J"></label>
      </li>
    </ol>
  </li>
  <li class="row row--7">
    <ol class="seats4" type="A">
      <li class="seat4">
        <input type="checkbox" id="7A" />
        <label for="7A"></label>
      </li>
      <li class="seat4">
        <input type="checkbox" id="7B" />
        <label for="7B"></label>
      </li>
      <li class="seat4">
        <input type="checkbox" id="7C" />
        <label for="7C"></label>
      </li>
      <li class="seat4">
        <input type="checkbox" id="7D" />
        <label for="7D"></label>
      </li>
      <li class="seat4">
        <input type="checkbox" id="7E" />
        <label for="7E"></label>
      </li>
      <li class="seat4">
        <input type="checkbox" id="7F" />
        <label for="7F"></label>
      </li>
      <li class="seat4">
        <input type="checkbox" id="7G" />
        <label for="7G"></label>
      </li>
      <li class="seat4">
        <input type="checkbox" id="7H" />
        <label for="7H"></label>
      </li>
      <li class="seat4">
        <input type="checkbox" id="7I" />
        <label for="7I"></label>
      </li>
      <li class="seat4">
        <input type="checkbox" id="7J" />
        <label for="7J"></label>
      </li>
      <li class="seat4">
        <input type="checkbox" id="7K" />
        <label for="7K"></label>
      </li>
      <li class="seat4">
        <input type="checkbox" id="7L" />
        <label for="7FL"></label>
      </li>
    </ol>
  </li>
  <li class="row row--8">
    <ol class="seats4" type="A">
      <li class="seat4">
        <input type="checkbox" id="8A" />
        <label for="8A"></label>
      </li>
      <li class="seat4">
        <input type="checkbox" id="8B" />
        <label for="8B"></label>
      </li>
      <li class="seat4">
        <input type="checkbox" id="8C" />
        <label for="8C"></label>
      </li>
      <li class="seat4">
        <input type="checkbox" id="8D" />
        <label for="8D"></label>
      </li>
      <li class="seat4">
        <input type="checkbox" id="8E" />
        <label for="8E"></label>
      </li>
      <li class="seat4">
        <input type="checkbox" id="8F" />
        <label for="8F"></label>
      </li>
      <li class="seat4">
        <input type="checkbox" id="8G" />
        <label for="8G"></label>
      </li>
      <li class="seat4">
        <input type="checkbox" id="8H" />
        <label for="8H"></label>
      </li>
      <li class="seat4">
        <input type="checkbox" id="8I" />
        <label for="8I"></label>
      </li>
      <li class="seat4">
        <input type="checkbox" id="8J" />
        <label for="8J"></label>
      </li>
      <li class="seat4">
        <input type="checkbox" id="8K" />
        <label for="8K"></label>
      </li>
      <li class="seat4">
        <input type="checkbox" id="8L" />
        <label for="8L"></label>
      </li>
    </ol>
  </li>

      </li>
    </ol>
  </li>

      </li>
    </ol>
  </li>
</ol>
<div class="exit exit--back fuselage">

</div>

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
        },
        data() {
          return {
            inc: 0
          }
        },
        methods: {
        toInc() {
          this.inc++
        },
        toDec() {
          this.inc--
        }
      }
    }

</script>

<style>
* {
  box-sizing: border-box;
}

.columns {

}

.price {
  list-style-type: none;
  border: 1px solid #eee;
  border-radius: 10px;
  margin: 0;
  padding: 0;
  -webkit-transition: 0.3s;
  transition: 0.3s;
  display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
  justify-content: flex-start

}

.price:hover {
  box-shadow: 0 8px 12px 0 rgba(0,0,0,0.2)
}




.price li {

  padding: 20px;
  text-align: center;
}



.button {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #c62d1f), color-stop(1, #f24437));
	background:-moz-linear-gradient(top, #c62d1f 5%, #f24437 100%);
	background:-webkit-linear-gradient(top, #c62d1f 5%, #f24437 100%);
	background:-o-linear-gradient(top, #c62d1f 5%, #f24437 100%);
	background:-ms-linear-gradient(top, #c62d1f 5%, #f24437 100%);
	background:linear-gradient(to bottom, #c62d1f 5%, #f24437 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#c62d1f', endColorstr='#f24437',GradientType=0);
	background-color:#c62d1f;
	-moz-border-radius:42px;
	-webkit-border-radius:42px;
	border-radius:42px;
	border:1px solid #d02718;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:17px;
	padding:7px 11px;
	text-decoration:none;
	text-shadow:0px 2px 0px #810e05;

}
.button:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #f24437), color-stop(1, #c62d1f));
	background:-moz-linear-gradient(top, #f24437 5%, #c62d1f 100%);
	background:-webkit-linear-gradient(top, #f24437 5%, #c62d1f 100%);
	background:-o-linear-gradient(top, #f24437 5%, #c62d1f 100%);
	background:-ms-linear-gradient(top, #f24437 5%, #c62d1f 100%);
	background:linear-gradient(to bottom, #f24437 5%, #c62d1f 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f24437', endColorstr='#c62d1f',GradientType=0);
	background-color:#f24437;
}
.button:active {
	position:relative;
	top:1px;
}








*,*:before,*:after {
  box-sizing: border-box;
}
html {
  font-size: 16px;
}



.plane {
  margin: 20px auto;
  max-width: 600px;
}

.cockpit {
  height: 200px;
  position: relative;
  overflow: hidden;
  text-align: center;
  border-bottom: 1px solid #d8d8d8;
  &:before {
    content: "";
    display: block;
    position: absolute;
    top: 0;
    left: 0;
    height: 500px;
    width: 100%;
    border-radius: 50%;
    border-right: 5px solid #d8d8d8;
    border-left: 5px solid #d8d8d8;


  }
  h1 {
     text-transform: uppercase;
     color: #fff;
     text-shadow: 0px 4px 5px rgba(0, 0, 0, 0.25);
     text-border: 0.3px solid rgba(0, 0, 0, 0.25);
   }
 }





ol {
  list-style :none;
  padding: 0;
  margin: 0;
}

.row {

}

.seats1 {
  display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
  justify-content: flex-start






}
.seats2 {
  display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
  justify-content: flex-start
}
.seats3 {
  display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
  justify-content: flex-start
}
.seats4 {
  display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
  justify-content: flex-start
}

.seat2 {
  padding: 10px;
  &:nth-child(3) {

  }





  input[type=checkbox] {
    position: absolute;
    opacity: 0;
  }
  input[type=checkbox]:checked {
    + label {
      background: #bada55;
      -webkit-animation-name: rubberBand;
          animation-name: rubberBand;
      animation-duration: 300ms;
      animation-fill-mode: both;
    }
  }
  input[type=checkbox]:disabled {
    + label {
      background: #dddddd;
      text-indent: -9999px;
      overflow: hidden;
      &:after {
        content: "X";
        text-indent: 0;
        position: absolute;
        top: 4px;
        left: 50%;
        transform: translate(-50%, 0%);
      }
      &:hover {
        box-shadow: none;
        cursor: not-allowed;
      }
    }
  }
  label {
    display: block;
    position: relative;
    width: 100%;
    text-align: center;
    font-size: 14px;
    font-weight: bold;

    line-height: 1.5rem;
    padding: 4px 0;
    background: #F42536;
    border-radius: 5px;
    animation-duration: 300ms;
    animation-fill-mode: both;

    &:before {
      content: "";
      position: absolute;
      width: 75%;
      height: 75%;
      top: 1px;
      left: 50%;
      transform: translate(-50%, 0%);
      background: rgba(255,255,255,.4);
      border-radius: 3px;
    }
    &:hover {
      cursor: pointer;
      box-shadow: 0 0 0px 2px #5C6AFF;
    }

  }
}

.seat1 {

  padding: 10px;
  &:nth-child(3) {

  }





  input[type=checkbox] {
    position: absolute;
    opacity: 0;
  }
  input[type=checkbox]:checked {
    + label {
      background: #bada55;
      -webkit-animation-name: rubberBand;
          animation-name: rubberBand;
      animation-duration: 300ms;
      animation-fill-mode: both;
    }
  }
  input[type=checkbox]:disabled {
    + label {
      background: #dddddd;
      text-indent: -9999px;
      overflow: hidden;
      &:after {
        content: "X";
        text-indent: 0;
        position: absolute;
        top: 4px;
        left: 50%;
        transform: translate(-50%, 0%);
      }
      &:hover {
        box-shadow: none;
        cursor: not-allowed;
      }
    }
  }
  label {
    display: block;
    position: relative;
    width: 100%;
    text-align: center;
    font-size: 14px;
    font-weight: bold;
    line-height: 1.5rem;
    padding: 4px 0;
    background: #F42536;
    border-radius: 5px;
    animation-duration: 300ms;
    animation-fill-mode: both;

    &:before {
      content: "";
      position: absolute;
      width: 75%;
      height: 75%;
      top: 1px;
      left: 50%;
      transform: translate(-50%, 0%);
      background: rgba(255,255,255,.4);
      border-radius: 3px;
    }
    &:hover {
      cursor: pointer;
      box-shadow: 0 0 0px 2px #5C6AFF;
    }

  }
}

.seat3 {
padding: 10px;
  &:nth-child(3) {

  }





  input[type=checkbox] {
    position: absolute;
    opacity: 0;
  }
  input[type=checkbox]:checked {
    + label {
      background: #bada55;
      -webkit-animation-name: rubberBand;
          animation-name: rubberBand;
      animation-duration: 300ms;
      animation-fill-mode: both;
    }
  }
  input[type=checkbox]:disabled {
    + label {
      background: #dddddd;
      text-indent: -9999px;
      overflow: hidden;
      &:after {
        content: "X";
        text-indent: 0;
        position: absolute;
        top: 4px;
        left: 50%;
        transform: translate(-50%, 0%);
      }
      &:hover {
        box-shadow: none;
        cursor: not-allowed;
      }
    }
  }
  label {
    display: block;
    position: relative;
    width: 100%;
    text-align: center;
    font-size: 14px;
    font-weight: bold;
    line-height: 1.5rem;
    padding: 4px 0;
    background: #F42536;
    border-radius: 5px;
    animation-duration: 300ms;
    animation-fill-mode: both;

    &:before {
      content: "";
      position: absolute;
      width: 75%;
      height: 75%;
      top: 1px;
      left: 50%;
      transform: translate(-50%, 0%);
      background: rgba(255,255,255,.4);
      border-radius: 3px;
    }
    &:hover {
      cursor: pointer;
      box-shadow: 0 0 0px 2px #5C6AFF;
    }

  }
}

.seat4 {
  padding: 10px;
  &:nth-child(3) {

  }





  input[type=checkbox] {
    position: absolute;
    opacity: 0;
  }
  input[type=checkbox]:checked {
    + label {
      background: #bada55;
      -webkit-animation-name: rubberBand;
          animation-name: rubberBand;
      animation-duration: 300ms;
      animation-fill-mode: both;
    }
  }
  input[type=checkbox]:disabled {
    + label {
      background: #dddddd;
      text-indent: -9999px;
      overflow: hidden;
      &:after {
        content: "X";
        text-indent: 0;
        position: absolute;
        top: 4px;
        left: 50%;
        transform: translate(-50%, 0%);
      }
      &:hover {
        box-shadow: none;
        cursor: not-allowed;
      }
    }
  }
  label {
    display: block;
    position: relative;
    width: 100%;
    text-align: center;
    font-size: 14px;
    font-weight: bold;
    line-height: 1.5rem;
    padding: 4px 0;
    background: #F42536;
    border-radius: 5px;
    animation-duration: 300ms;
    animation-fill-mode: both;

    &:before {
      content: "";
      position: absolute;
      width: 75%;
      height: 75%;
      top: 1px;
      left: 50%;
      transform: translate(-50%, 0%);
      background: rgba(255,255,255,.4);
      border-radius: 3px;
    }
    &:hover {
      cursor: pointer;
      box-shadow: 0 0 0px 2px #5C6AFF;
    }

  }
}

@-webkit-keyframes rubberBand {
  0% {
    -webkit-transform: scale3d(1, 1, 1);
            transform: scale3d(1, 1, 1);
  }

  30% {
    -webkit-transform: scale3d(1.25, 0.75, 1);
            transform: scale3d(1.25, 0.75, 1);
  }

  40% {
    -webkit-transform: scale3d(0.75, 1.25, 1);
            transform: scale3d(0.75, 1.25, 1);
  }

  50% {
    -webkit-transform: scale3d(1.15, 0.85, 1);
            transform: scale3d(1.15, 0.85, 1);
  }

  65% {
    -webkit-transform: scale3d(.95, 1.05, 1);
            transform: scale3d(.95, 1.05, 1);
  }

  75% {
    -webkit-transform: scale3d(1.05, .95, 1);
            transform: scale3d(1.05, .95, 1);
  }

  100% {
    -webkit-transform: scale3d(1, 1, 1);
            transform: scale3d(1, 1, 1);
  }
}

@keyframes rubberBand {
  0% {
    -webkit-transform: scale3d(1, 1, 1);
            transform: scale3d(1, 1, 1);
  }

  30% {
    -webkit-transform: scale3d(1.25, 0.75, 1);
            transform: scale3d(1.25, 0.75, 1);
  }

  40% {
    -webkit-transform: scale3d(0.75, 1.25, 1);
            transform: scale3d(0.75, 1.25, 1);
  }

  50% {
    -webkit-transform: scale3d(1.15, 0.85, 1);
            transform: scale3d(1.15, 0.85, 1);
  }

  65% {
    -webkit-transform: scale3d(.95, 1.05, 1);
            transform: scale3d(.95, 1.05, 1);
  }

  75% {
    -webkit-transform: scale3d(1.05, .95, 1);
            transform: scale3d(1.05, .95, 1);
  }

  100% {
    -webkit-transform: scale3d(1, 1, 1);
            transform: scale3d(1, 1, 1);
  }
}

.rubberBand {
  -webkit-animation-name: rubberBand;
          animation-name: rubberBand;
}

</style>
