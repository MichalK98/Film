<template>
  <div>
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
            <form>
              <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input
                  type="email"
                  class="form-control"
                  id="Email1"
                  aria-describedby="emailHelp"
                  placeholder="Enter email"
                >
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="Password1" placeholder="Password">
              </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Sign in</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Login"
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
  background-color: rgb(26, 29, 33) !important;
  box-shadow: 0px 0px 8px 2px rgb(26, 29, 33);
  color: white;
}
</style>
