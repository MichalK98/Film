<template>
  <div>
    <a v-if="user.firstname" class="nav-link"></a>
    <a v-else class="nav-link" data-toggle="modal" data-target="#registerModal">Register</a>
    <!-- Button trigger modal -->
    <!-- Modal -->
    <div
      class="modal fade"
      id="registerModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" :disabled="loading" @:click="test">Register</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form @submit.prevent="submit">
              <div class="form-group">
                <label for="exampleInputEmail1">Namn</label>
                <input
                  type="text"
                  class="form-control"
                  id="Eamil2"
                  aria-describedby="emailHelp"
                  placeholder="namn"
                  v-model="firstname"
                  :disabled="loading"
                  required
                >
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Efternamn</label>
                <input
                  type="text"
                  class="form-control"
                  id="Passwors2"
                  placeholder="efternamn"
                  v-model="lastname"
                  :disabled="loading"
                  required
                >
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Email</label>
                <input
                  type="email"
                  class="form-control"
                  id="exampleInputPassword1"
                  placeholder="email"
                  v-model="email"
                  :disabled="loading"
                  required
                >
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Lösenord</label>
                <input
                  type="password"
                  class="form-control"
                  id="exampleInputPassword2"
                  placeholder="lösenord"
                  v-model="password"
                  :disabled="loading"
                  required
                >
              </div>
              <div>
                <span class="msg" v-if="message">{{message}}</span>
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Stäng</button>
            <button
              type="submit"
              class="btn btn-primary"
              data-dismiss="modal"
              :disabled="loading"
              v-on:click.prevent="submit"
            >Registrera</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
// import $ from 'jquery'
import flatpickr from "flatpickr";

export default {
  name: "register",
  data() {
    return {
      firstname: "",
      lastname: "",
      email: "",
      password: "",
      message: "",
      loading: false,
      tester: 0,
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
    submit() {
      // register
      this.loading = true;
      this.message = "";
      this.$axios
        .post("register.php", {
          firstname: this.firstname,
          lastname: this.lastname,
          email: this.email,
          password: this.password
        })
        .then(response => {
          this.loading = false;
          if (response.data) {
            this.message = "Du är nu registrerad";
          } else {
            this.message = "Fel email eller lösenord";
          }
        })
        .catch(error => {
          this.message = "Error";
          console.log("Error", error);
          this.loading = false;
        });
    },
    test() {
      console.log(this.tester);
    }
  }
};
</script>