
import Vue from 'vue'
import PureVueChart from 'pure-vue-chart'
import App from '../charts.vue'


document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    render: h => h(App)
  }).$mount()
  document.body.appendChild(app.$el)

  console.log(app)
})
