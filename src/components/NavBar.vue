<template>
  <div class="navbar-back"></div>
  <div class="navbar bg-primary">
    <router-link to="/" class="navbar-logo">
      notafoks
    </router-link>
  </div>
</template>

<script>
export default {
  name: "NavBar",
};
</script>

<style scoped lang="scss">
.navbar-back {
  width: 100%;
  height: 64px;
}

.navbar {
  width: 100%;
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  height: 64px;
  display: flex;
  align-items: center;
  padding: 0 24px;
  user-select: none;
}
.navbar-logo{
  color: white;
  font-family: "Montserrat", Helvetica, serif;
  font-weight: bold;
  font-size: 30px;
}
</style>
