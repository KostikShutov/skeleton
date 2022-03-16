<template>
  <div class="control">
    <h1>This is an control page</h1>
    <MonitorScreen />
    <DirectionArrow arrow-id="up" />
    <DirectionArrow arrow-id="down" />
    <StatusBar />
  </div>
</template>

<script lang="ts">
import { Options, Vue } from "vue-class-component";
import MonitorScreen from "@/components/control/MonitorScreen.vue";
import DirectionArrow from "@/components/control/DirectionArrow.vue";
import StatusBar from "@/components/control/StatusBar.vue";

@Options({
  components: {
    MonitorScreen,
    DirectionArrow,
    StatusBar,
  },
})
export default class Control extends Vue {}
</script>
