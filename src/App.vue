<template>
    <div id="app">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Logo</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <router-link to="/" class="nav-link">Home</router-link>
                    </li>
                    <li class="nav-item">
                        <router-link to="/about" class="nav-link">About</router-link>
                    </li>
                    <li class="nav-item">
                        <router-link to="/booking" class="nav-link">Booking</router-link>
                    </li>
                </ul>
            </div>
        </nav>
        <router-view />
        <footer>
            Footer
        </footer>
    </div>
</template>

<style>
    body {
        background-image: linear-gradient(to bottom right, rgb(2, 38, 71), rgb(52, 114, 145), rgb(6, 15, 22));
        background-size: cover;
    }

    #app {
        font-family: 'Avenir', Helvetica, Arial, sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        text-align: center;
        color: #2c3e50;
    }

    #nav {
        padding: 30px;
    }

    #nav a {
        font-weight: bold;
        color: #2c3e50;
    }

    #nav a.router-link-exact-active {
        color: #42b983;
    }

    .navbar.navbar-expand-lg.navbar-light.bg-light {
        background-color: rgb(26, 29, 33) !important;
        box-shadow: 0px 0px 8px 2px rgb(26, 29, 33);
    }
    
    .navbar-brand, .nav-link {
        color: white !important;
    }
    
    .navbar-toggler-icon{
        filter: brightness(0) invert(1);
    }

    footer {
        width: 100%;
        height: 100px;
        background-color: rgb(26, 29, 33) !important;
        box-shadow: 0px 0px 8px 2px rgb(26, 29, 33);
        color: white;
    }

</style>
