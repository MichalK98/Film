<template>
  <div>
    <a v-if="user.firstname" class="nav-link" v-on:click="logout">Logout</a>
    <a v-else class="nav-link" data-toggle="modal" data-target="#loginModal">Login</a>
    <!-- Button trigger modal -->
    <!-- Modal -->
    <div
      class="modal fade"
      id="loginModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Login</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form @submit.prevent="submit">
              <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input
                  type="email"
                  class="form-control"
                  id="Email1"
                  aria-describedby="emailHelp"
                  placeholder="Enter email"
                  v-model="email"
                  :disabled="loading"
                  required
                >
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input
                  type="password"
                  class="form-control"
                  id="Password1"
                  placeholder="Password"
                  v-model="password"
                  :disabled="loading"
                  required
                >
              </div>
            </form>
          </div>
          <div>
            <span class="msg" v-if="message">{{message}}</span>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button
              type="submit"
              class="btn btn-primary"
              :disabled="loading"
              v-on:click.prevent="submit"
            >Logga in</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Login",
  data() {
    return {
      email: "",
      password: "",
      message: "",
      loading: false,
      showingLogin: false,
      user: {}
    };
  },
  created() {
    this.$axios
      .get("user.php")
      .then(response => {
        this.user = response.data;
      })
      .catch(e => {
        // not logged in
      });
  },
  methods: {
    showLogin() {
      this.showingLogin = true;
    },
    cancelLogin(e) {
      e.preventDefault();
      this.showingLogin = false;
    },
    submit() {
      // login
      this.loading = true;
      this.message = "";
      this.$axios
        .post("login.php", {
          email: this.email,
          password: this.password
        })
        .then(response => {
          this.loading = false;
          this.showingLogin = false;
          if (response.data.loggedIn) {
            this.user = response.data.user;
            this.message = "inloggad";
          } else {
            this.message = "fel email/lösenord";
          }
        })
        .catch(error => {
          this.message = "Login error";
          console.log("login error", error);
          this.loading = false;
        });
    },
    logout() {
      this.loading = true;
      this.$axios
        .post("logout.php")
        .then(response => {
          this.loading = false;
          this.user = {};
        })
        .catch(error => {
          console.log("logout error", error);
          this.loading = false;
        });
    }
  },
  watch: {
    email() {
      this.message = "";
    },
    password() {
      this.message = "";
    }
  }
};
</script>


<style>
.modal {
  z-index: 1;
}

.close {
  color: red !important;
  font-size: 200% !important;
  text-shadow: 0 1px 0 black !important;
}

.modal-content {
  background-color: rgb(4, 6, 8) !important;
  box-shadow: 0px 0px 8px 2px rgb(26, 29, 33);
  color: white;
}
</style>
