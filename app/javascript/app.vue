<template>
  <div id="app">
  <main class="flexbox">

    <Board id="board-1">
     <Card id="card-1" draggable="true">
       <p> Card one </p>
      </Card>
      <Card id="card-3" draggable="true">
        <p> Card three </p>
       </Card>
    </Board>

    <Board id="board-2">
     <Card id="card-2" draggable="true">
       <p> Card two </p>
      </Card>
    </Board>

  </main>

  </div>
</template>

<script>
import Board from './components/Board';
import Card from './components/Card';

export default {
  name: 'app',
  components: {
  Board,
   Card
  }
}
</script>
