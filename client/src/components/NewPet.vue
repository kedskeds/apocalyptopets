<template>
  <div>
    <h1>New Pet</h1>
    <div class="image">
      <img
        v-for="body in bodies"
        :key="body.id"
        :src="body.src"
        :alt="body.alt"
        :class="body.selected ? body.class : 'hide'">
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
      :items="bodies">
    </selector>
    <selector
      title="Accessories"
      :limit="2"
      :items="accessories">
    </selector>
    <button @click="savePet">Save</button>
  </div>
</template>

<script>
import PetsService from '@/services/PetsService'
import Selector from './Selector'
export default {
  name: 'NewPet',
  components: {
    'selector': Selector
  },
  data() {
    return {
      bodies: [
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
  methods: {
    async savePet() {
      await PetsService.addPet({
        pindex: 0,
        accessoryArray: [1,2]
      })
      this.$router.push({ name: 'Pets' })
    }
  }
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
