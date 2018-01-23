<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <h2>Attributes</h2>
    <ul>
      <li v-for="(value, name) in attributes">{{ name }}: {{ value }}</li>
    </ul>
    <div class="image">
      <img :src="selectedPet.src" :alt="selectedPet.alt" :class="selectedPet.class">
      <img
        v-for="accessory in accessories"
        :key="accessory.alt"
        :src="accessory.src"
        :alt="accessory.alt"
        :class="accessory.selected ? accessory.class : 'hide'">
    </div>
    <button v-on:click="decode">Decode</button>
    <h2>Pets</h2>
    <img
      v-for="pet in pets"
      :key="pet.alt"
      :src="pet.src"
      :class="pet.selected ? 'selected thumb' : 'thumb'"
      v-on:click="pet.selected ? '' : selectPet(pet)">
    <h2>Accessories</h2>
    <img
      v-for="accessory in accessories"
      :key="accessory.alt"
      :src="accessory.src"
      :class="accessory.selected ? 'selected thumb' : 'thumb'"
      v-on:click="toggleAccessory(accessory)">
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
          selected: true,
        },
        {
          src: require('../assets/goat-eye/goat-eye-2.svg'),
          alt: 'Goat Eye Option 2',
          class: 'goat-eye option-2',
          selected: false,
        },
        {
          src: require('../assets/goat-eye/goat-eye-3.svg'),
          alt: 'Goat Eye Option 3',
          class: 'goat-eye option-3',
          selected: false,
        },
        {
          src: require('../assets/hats/hat.svg'),
          alt: 'hat',
          class: 'hat',
          selected: true,
        },
      ],
      pets: [
        {
          src: require('../assets/goat.svg'),
          alt: 'Goat Pet',
          class: 'pet',
          selected: true,
        },
        {
          src: require('../assets/lemur.svg'),
          alt: 'Lemur Pet',
          class: 'pet',
          selected: false,
        },
      ],
      selectedPet: {
        src: require('../assets/goat.svg'),
        alt: 'Goat Pet',
        class: 'pet',
      },
      attributes: {
        'Strength': Math.floor((Math.random() * 10) + 1),
        'IQ': Math.floor((Math.random() * 5) + 1),
      },
    };
  },
  methods: {
    decode() {
      this.msg = this.msg.split('').reverse().join('');
    },
    toggleAccessory(accessory) {
      accessory.selected = !accessory.selected;
    },
    selectPet(pet) {
      this.pets.forEach((pet) => {
        pet.selected = false;
      });
      pet.selected = true;
      this.selectedPet = pet;
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
.pet, .goat-eye, .hat {
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
.thumb {
  width: 10%;
  min-width: 100px;
  margin: 1px;
  border: 1px solid transparent;
}
.selected {
  border-color: red;
}
</style>
