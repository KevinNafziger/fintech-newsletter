<template>
  <div id="app">
  <main class="flexbox">
<center>  Hello, please let me know if you see this, Thanks.
<br><br>
  Hola, avisame si miras esto porfavor, Gracias.
  </center>
  </main>

  </div>
</template>

<script>
export default {
  name: 'App',
  components: {
  }
}
</script>

<style>

body {
background: #f3f3f3;
}

   .flexbox {
   display:flex;
   justify-content:space-between;

   width: 100%;
   max-width: 768px;
   height: 100vh;

   overflow: hidden;

   margin: 0 auto;
   padding: 15px;

}

    .flexbox .board {

      display: flex;
      flex-direction: column;

      width: 100%;
      max-width: 300px;

      background-color: #313131;

      padding: 15px;

    }

    .flexbox .board .card {
      padding: 15px 25px;
      background-color: #f3f3f3;

      cursor: pointer;
      margin-bottom: 15px;
    }

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

</style>
