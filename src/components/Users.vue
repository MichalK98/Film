<template>
  <div></div>
</template>


<script>
export default {
  name: "Users",
  data() {
    return {
      users: []
    };
  },
  created() {
    this.$axios.get("members.php").then(response => {
      let users = response.data;
      console.log(users);
    });
  }
};
</script>
