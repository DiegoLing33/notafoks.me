<template>
  <div class="home">
    <div class="title">notafoks</div>
    <div class="social-buttons">
      <a class="social-button" href="https://www.instagram.com/notafoks/">
        <img src="@/assets/instagram.svg" alt="notafoks instagram" />
      </a>
      <a class="social-button" href="https://github.com/DiegoLing33">
        <img src="@/assets/github.png" alt="DiegoLing33 github" />
      </a>
      <router-link class="social-button link" style="width: auto" to="/main">
        Laboratory <span>→</span>
      </router-link>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  name: "Home",
  components: {},
});
</script>
<style lang="scss">
.title {
  font-family: "Montserrat", Helvetica, serif;
  font-weight: bold;
  font-size: 11vw;
  line-height: 1;
  margin-bottom: 16px;

  @media (max-width: 944px) {
    font-size: 70px;
  }
}

.subtitle {
  //text-transform: uppercase;
  margin-top: 24px;
  font-size: 20px;
  opacity: 0.5;
}

@keyframes arrow {
  0%{
    transform: translateX(0);
  }
  100%{
    transform: translateX(4px);
  }
}

.social-buttons {
  display: flex;
  justify-content: center;
  align-items: center;

  .social-button {
    width: 32px;
    height: 32px;
    display: flex;
    justify-content: center;
    align-items: center;
    cursor: pointer;
    opacity: 1;
    transition: opacity 0.2s;

    :hover {
      opacity: 0.7;
    }

    &:not(:last-child) {
      margin-right: 16px;
    }

    img {
      width: 100%;
    }

    &.link {
      background-color: #000000;
      color: white;
      height: 32px;
      padding: 0 16px;
      text-transform: uppercase;
      cursor: pointer;
      transition: opacity 0.2s;
      span {
        padding-left: 8px;
        transform: translateX(0);
      }
      &:hover {
        opacity: 0.7;
        span {
          animation: arrow 0.2s forwards;
        }
      }
    }
  }
}

.home {
  user-select: none;
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
  width: 100%;
  min-height: 99vh;
}
</style>
