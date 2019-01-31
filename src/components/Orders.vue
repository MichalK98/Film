<template>
  <div></div>
</template>


<script>
export default {
  name: "Orders",
  data() {
    return {
      orders: []
    };
  },
  created() {
    this.$axios.get("orders.php").then(response => {
      let orders = response.data;
      // console.log(orders);
    });
  }
};
</script>
