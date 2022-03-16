<template>
  <div>Монитор</div>
  <div class="monitor"></div>
</template>

<script lang="ts">
import { Vue } from "vue-class-component";

export default class MonitorScreen extends Vue {}
</script>

<style lang="stylus">
.monitor
  width: 70%
  height: 200px
  margin: auto
  border: 1px solid
</style>
