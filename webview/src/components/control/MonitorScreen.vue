<template>
  <div>Монитор</div>
</template>

<script lang="ts">
import { Options, Vue } from "vue-class-component";

@Options({
  props: {
    msg: String,
  },
})
export default class MonitorScreen extends Vue {
  msg!: string;
}
</script>
