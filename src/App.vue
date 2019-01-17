<template>
    <div id="app">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#"><img src="../public/logo.png" alt="filmXD" width="40px"></a>
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
        <!-- Footer -->
        <footer class="page-footer font-small mdb-color darken-3 pt-4">

            <!-- Footer Elements -->
            <div class="container">

                <!--Grid row-->
                <div class="row d-flex justify-content-center">

                    <!--Grid column-->
                    <div class="col-md-6">

                        <!-- Video -->
                        <div class="embed-responsive embed-responsive-16by9 mb-4">
                            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/1XW1Ygatsz4" allowfullscreen></iframe>
                        </div>

                    </div>
                    <!--Grid column-->

                </div>
                <!--Grid row-->

            </div>
            <!-- Footer Elements -->

            <!-- Copyright -->
            <div class="footer-copyright text-center py-3">© 2018 Copyright:
                <a href="https://mdbootstrap.com/education/bootstrap/"> FilmXD.com</a>
            </div>
            <!-- Copyright -->

        </footer>
        <!-- Footer -->
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

    .navbar-brand,
    .nav-link {
        color: white !important;
    }

    .navbar-toggler-icon {
        filter: brightness(0) invert(1);
    }

    footer {
        background-color: rgb(26, 29, 33) !important;
        box-shadow: 0px 0px 8px 2px rgb(26, 29, 33);
        color: white;
    }
    
    .footer-copyright.text-center.py-3 {
        background-color: rgba(0,0,0,.2);
    }

</style>
