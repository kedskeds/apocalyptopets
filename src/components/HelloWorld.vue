<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <div class="image">
      <img src="../assets/goat.svg" alt="Goat Pet" class="goat">
      <img
        v-for="accessory in accessories"
        :key="accessory.alt"
        :src="accessory.src"
        :alt="accessory.alt"
        :class="accessory.wearing ? accessory.class : 'hide'">
    </div>
    <button v-on:click="decode">Decode</button>
    <button v-on:click="toggleAccessories">Toggle Accessories</button>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  data() {
    return {
      msg: 'Turn back before it\'s too late'.split('').reverse().join(''),
      accessories: [
        {
          src: require('../assets/goat-eye/goat-eye-1.svg'),
          alt: 'Goat Eye Option 1',
          class: 'goat-eye option-1',
          wearing: true,
        },
        {
          src: require('../assets/goat-eye/goat-eye-2.svg'),
          alt: 'Goat Eye Option 2',
          class: 'goat-eye option-2',
          wearing: true,
        },
        {
          src: require('../assets/goat-eye/goat-eye-3.svg'),
          alt: 'Goat Eye Option 3',
          class: 'goat-eye option-3',
          wearing: true,
        },
        {
          src: require('../assets/hats/hat.svg'),
          alt: 'hat',
          class: 'hat',
          wearing: true,
        },
      ],
    };
  },
  methods: {
    decode() {
      this.msg = this.msg.split('').reverse().join('');
    },
    toggleAccessories() {
      this.accessories.forEach((accessory) => {
        accessory.wearing = !accessory.wearing;
      });
    },
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
html {
  font-size: 62.5%;
}
h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
.hide {
  display: none;
}
.image {
  position: relative;
}
.goat, .goat-eye, .hat {
  height: 20rem;
}
.goat-eye, .hat {
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
}
.goat-horn {
  fill: blue;
}
</style>
