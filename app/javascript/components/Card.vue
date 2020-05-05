<template>
  <div
    :id="id"
    class="card"
    :draggable="draggable"
    @dragstart="dragStart"
    @dragover.stop
  >
    <slot />
  </div>
</template>


<script>
 export default {
    props: ['id', 'draggable'],
    methods: {
      dragStart: e => {
        const target = e.target;

        e.dataTransfer.setData('card_id', target.id);
//if we want cards to not disapear when hold comment line 23 24 25
        setTimeout (() => {
          target.style.display = "none";
        }, 0);
      }
    }
 }
</script>
