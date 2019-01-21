<template>
    <div>
        <ul v-for="(item, i) in items"
			:key="i">
			<li>
				<img v-bind:src="item.images[0]" width="200" height="200">
				 <div>{{item.title}}</div>
					<div>{{item.length}}</div>
					<div>{{item.aptDate}}</div>
					<div>{{item.aptNotes}}</div>
			</li>
		</ul>
        <div class="commingSoon">
            <img class="commingSoonImg" src="https://images.alphacoders.com/954/954739.jpg" alt="Comming Soon" width="100%">
        </div>
        <div class="searchContainer">
            <form class="form-inline">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <div class="btn-group">
                    <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <button class="dropdown-item" type="button">Action</button>
                    </div>
                </div>
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
        <div class="movieTimeContainer">
            <div class="movieTime">
                <h5>12:30</h5>
                <h5>9/11</h5>
            </div>
            <hr>
            <div class="movieGridContainer">
                <div class="movieContainer" style="background-image: url('https://m.media-amazon.com/images/M/MV5BMjU1ODM1MzYxN15BMl5BanBnXkFtZTgwOTA4NDE2ODE@._V1_.jpg'); ">
                    <h2 class="movieTitel">Titel</h2>
                    <div class="corner">
                        <router-link to="/film" class="nav-link"><span>More</span></router-link>
                    </div>
                </div>
                <div class="movieContainer" style="background-image: url('https://m.media-amazon.com/images/M/MV5BMjU1ODM1MzYxN15BMl5BanBnXkFtZTgwOTA4NDE2ODE@._V1_.jpg'); ">
                    <h2 class="movieTitel">Titel</h2>
                    <div class="corner">
                        <router-link to="/film" class="nav-link"><span>More</span></router-link>
                    </div>
                </div>
                <div class="movieContainer" style="background-image: url('https://m.media-amazon.com/images/M/MV5BMjU1ODM1MzYxN15BMl5BanBnXkFtZTgwOTA4NDE2ODE@._V1_.jpg'); ">
                    <h2 class="movieTitel">Titel</h2>
                    <div class="corner">
                        <router-link to="/film" class="nav-link"><span>More</span></router-link>
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
            <div class="movieGridContainer">
                <div class="movieContainer" style="background-image: url('https://m.media-amazon.com/images/M/MV5BMjU1ODM1MzYxN15BMl5BanBnXkFtZTgwOTA4NDE2ODE@._V1_.jpg'); ">
                    <h2 class="movieTitel">Titel</h2>
                    <div class="corner">
                        <router-link to="/film" class="nav-link"><span>More</span></router-link>
                    </div>
                </div>
                <div class="movieContainer" style="background-image: url('https://m.media-amazon.com/images/M/MV5BMjU1ODM1MzYxN15BMl5BanBnXkFtZTgwOTA4NDE2ODE@._V1_.jpg'); ">
                    <h2 class="movieTitel">Titel</h2>
                    <div class="corner">
                        <router-link to="/film" class="nav-link"><span>More</span></router-link>
                    </div>
                </div>
            </div>
        </div>
    
        <div class="kommandeFilmGridContainer">
            <h1>Kommande film</h1>
            <div class="row">
                <div v-for="(kommandeFilmer, i) in kommandeFilmer"
			    :key="i" class="kommandeFilmContainer" :style="{ backgroundImage: `url('${kommandeFilmer.image}')` }">
                    <h2>{{kommandeFilmer.title}}</h2>
                </div>
                <!-- <div class="kommandeFilmContainer" style="background-image: url('https://m.media-amazon.com/images/M/MV5BMTY1NDc3MzgxNV5BMl5BanBnXkFtZTgwNDc3MTQwNjM@._V1_.jpg');">
                    <h2>16 januari</h2>
                </div>
                <div class="kommandeFilmContainer" style="background-image: url('https://m.media-amazon.com/images/M/MV5BMTY1NDc3MzgxNV5BMl5BanBnXkFtZTgwNDc3MTQwNjM@._V1_.jpg');">
                    <h2>16 januari</h2>
                </div>
                <div class="kommandeFilmContainer">
                    <h2>16 januari</h2>
                </div> -->

            </div>              
        </div>
    </div>
</template>

<script>
    import movies from '../assets/json/movies.json'
    import kommandeFilmer from '../assets/json/kommandeFilmer.json'

        export default {
    name: 'hello',
    data () {
        return {
                items: movies,
                kommandeFilmer: kommandeFilmer

        }
    }
    }
</script>

<style>
    /*    Comming Soon     */
    .commingSoonImg {
        mask-image: linear-gradient(to bottom, rgba(0, 0, 0, 1), rgba(0, 0, 0, 1), rgba(0, 0, 0, 1), rgba(0, 0, 0, 0));

    }

    /*    Searchbar     */
    .searchContainer {
        margin: 15px;
        background-color: rgba(129, 131, 132, .3);
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
        background-color: rgba(129, 131, 132, .3);
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
    .kommandeFilmGridContainer {
        margin: 15px;
        background-color: grey;
        height: 360px;
        border-right: 20px;
        
    }
    .row{
        margin-left: 8px !important;

      }  
    .kommandeFilmContainer h2{
    
    background: #cc0020;
    border-width: 40px;
    right: 0;


}

    .kommandeFilmContainer {
        margin: 15px;
        height: 300px;
        width: 280px;
        background-image: url('https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwiR-7jW0fTfAhVLBSwKHRkCA9UQjRx6BAgBEAU&url=https%3A%2F%2Fdarkregions.com%2Fproducts%2Fbird-box-special-edition-by-josh-malerman&psig=AOvVaw3xtgniE6S2JInYvDGYskrf&ust=1547808365050728');
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
        background-color: rgba(26, 29, 33, .9);
        color: white;
        font-size: 150%;
        padding: 5px;
    }

    .corner {
        width: 0;
        height: 0;
        border-bottom: 150px solid rgba(26, 29, 33, .9);
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
