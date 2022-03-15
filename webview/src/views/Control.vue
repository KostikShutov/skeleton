<template>
  <div class="control">
    <h1>This is an control page</h1>
    <DirectionArrow />
    <MonitorScreen />
    <StatusBar />
  </div>
</template>

<script lang="ts">
import { Options, Vue } from "vue-class-component";
import DirectionArrow from "@/components/control/DirectionArrow.vue";
import MonitorScreen from "@/components/control/MonitorScreen.vue";
import StatusBar from "@/components/control/StatusBar.vue";

@Options({
  components: {
    DirectionArrow,
    MonitorScreen,
    StatusBar
  },
})
export default class Control extends Vue {}
</script>
