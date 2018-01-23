<template>
  <div>
    <h2>{{ title }}</h2>
    <img
      v-for="item in items"
      :key="item.id"
      :src="item.src"
      :alt="item.alt"
      :class="item.selected ? 'selected thumb' : 'thumb'"
      v-on:click="toggleSelection(item.id)">
  </div>
</template>

<script>
export default {
  name: 'Selector',
  props: ['title', 'limit', 'items'],
  data() {
    return {
      selected: [],
    };
  },
  methods: {
    toggleSelection(id) {
      if(this.limit > this.selected.length || this.items[id].selected) {
        this.items[id].selected = !this.items[id].selected;
        const index = this.selected.indexOf(id);
        if(index < 0) {
          this.selected.push(id);
        }
        else {
          this.selected.splice(index, 1);
        }
      }
    },
  },
};
</script>
<style>
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