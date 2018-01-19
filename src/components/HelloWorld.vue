<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <div class="image">
      <img src="../assets/goat.svg" alt="Goat Pet" class="goat">
      <img src="../assets/goat-eye-1.svg" alt="Goat Eye Option 1" class="goat-eye option-1">
      <img src="../assets/goat-eye-2.svg" alt="Goat Eye Option 1" class="goat-eye option-2">
    </div>
    <button v-on:click="decode">Decode</button>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  data() {
    return {
      msg: 'Turn back before it\'s too late'.split('').reverse().join(''),
    }
  },
  methods: {
    decode: function(){
      this.msg = this.msg.split('').reverse().join('')
    }
  }
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
.goat, .goat-eye {
  height: 20rem;
}
.goat-eye {
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
}
.goat-horn {
  fill: blue;
}
</style>
