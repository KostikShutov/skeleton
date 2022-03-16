<template>
  <div>
    <font-awesome-icon :icon="icons[arrowId]" />
  </div>
</template>

<script lang="ts">
export default {
  props: {
    arrowId: String,
  },
  data() { // Todo: return type
    return {
      icons: {
        up: ["fas", "arrow-up"],
        down: ["fas", "arrow-down"],
      },
    };
  },
};
</script>
