<template>
  <div>
    <h1>New Pet</h1>
    <div class="image">
      <img
        v-for="pet in pets"
        :key="pet.id"
        :src="pet.src"
        :alt="pet.alt"
        :class="pet.selected ? pet.class : 'hide'">
      <img
        v-for="accessory in accessories"
        :key="accessory.alt"
        :src="accessory.src"
        :alt="accessory.alt"
        :class="accessory.selected ? accessory.class : 'hide'">
    </div>
    <selector
      title="Pets"
      :limit="1"
      :items="pets">
    </selector>
    <selector
      title="Accessories"
      :limit="2"
      :items="accessories">
    </selector>
  </div>
</template>

<script>

import Selector from './Selector'
export default {
  name: 'NewPet',
  components: {
    'selector': Selector
  },
  data() {
    return {
      pets: [
        {
          id: 0,
          src: require('../assets/goat.svg'),
          alt: 'Goat Pet',
          class: 'pet',
          selected: false,
        },
        {
          id: 1,
          src: require('../assets/lemur.svg'),
          alt: 'Lemur Pet',
          class: 'pet',
          selected: false,
        },
      ],
      accessories: [
        {
          id: 0,
          src: require('../assets/goat-eye/goat-eye-1.svg'),
          alt: 'Goat Eye Option 1',
          class: 'goat-eye option-1',
          selected: false,
          name: 'testName',
        },
        {
          id: 1,
          src: require('../assets/goat-eye/goat-eye-2.svg'),
          alt: 'Goat Eye Option 2',
          class: 'goat-eye option-2',
          selected: false,
        },
        {
          id: 2,
          src: require('../assets/goat-eye/goat-eye-3.svg'),
          alt: 'Goat Eye Option 3',
          class: 'goat-eye option-3',
          selected: false,
        },
        {
          id: 3,
          src: require('../assets/hats/hat.svg'),
          alt: 'hat',
          class: 'hat',
          selected: false,
        },
      ]
    };
  },
};
</script>
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
  height: 20rem;
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
</style>
