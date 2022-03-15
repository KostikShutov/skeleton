<template>
  <div>Статус бар</div>
</template>

<script lang="ts">
import { Options, Vue } from "vue-class-component";

@Options({
  props: {
    msg: String,
  },
})
export default class StatusBar extends Vue {
  msg!: string;
}
</script>
