<template>
  <div>
    <a v-if="true" class="nav-link" data-toggle="modal" data-target="#myOrdersModal">Mina Biljetter</a>
    <!-- Button trigger modal -->
    <!-- Modal -->
    <div
      class="modal fade"
      id="myOrdersModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Mina Biljetter</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th scope="col">ID</th>
                  <th scope="col">Datum</th>
                  <th scope="col">Plats</th>
                  <th scope="col">Titel</th>
                  <th scope="col">Pris</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">{{orders[0].ID}}</th>
                  <td>{{orders[0].created}}</td>
                  <td>{{orders[0].plats}}</td>
                  <td>{{orders[0].titel}}</td>
                  <td>{{orders[0].pris}}</td>
                </tr>
              </tbody>
            </table>
          </div>
          <div class="modal-footer"></div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "MyOrders",
  data() {
    return {
      orders: {},
      show: false
    };
  },
  created() {
    this.$axios
      .get("orders.php")
      .then(response => {
        this.orders = response.data;
        console.log(this.orders);
        console.log(this.orders[0].created);
        this.show = true;
      })
      .catch(e => {
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");
        console.log("Working");

        this.show = false;
      });
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
