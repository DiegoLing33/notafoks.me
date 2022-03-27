<template>
  <NavBar />
  <div class="container">
    <slot></slot>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import NavBar from "@/components/NavBar.vue";

export default defineComponent({
  name: "Wrapper",
  components: { NavBar },
});
</script>

<style scoped lang="scss">
.container{
  margin-top: 40px;
  margin-left: auto;
  margin-right: auto;
  max-width: 1600px;
  width: 90%;
  text-align: left;
}
</style>
