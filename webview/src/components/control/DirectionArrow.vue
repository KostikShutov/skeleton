<template>
  <div>Стрелка</div>
</template>

<script lang="ts">
import { Options, Vue } from "vue-class-component";

@Options({
  props: {
    msg: String,
  },
})
export default class DirectionArrow extends Vue {
  msg!: string;
}
</script>
