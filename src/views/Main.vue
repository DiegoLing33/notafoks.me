<template>
  <Wrapper>
    <h1>Laboratory</h1>
    <p class="mobile-like">This is the place where incredible magic comes</p>
    <div></div>
  </Wrapper>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import Wrapper from "@/components/Wrapper.vue";

export default defineComponent({
  name: "Main",
  components: { Wrapper },
});
</script>

<style scoped></style>
