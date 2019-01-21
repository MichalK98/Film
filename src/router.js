import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Booking from './views/Booking.vue?'

Vue.use(Router)

export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/about',
      name: 'about',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue')
    },
    {
      path: '/booking',
      name: 'booking',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "booking" */ './views/Booking.vue')
    },
    {
      path: '/film',
      name: 'film',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "booking" */ './views/Film.vue')
    },
    {
      path: '/information-om-filmerna',
      name: 'information om filmerna',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "booking" */ './views/Information-om-filmerna.vue')
    }
  ]
})
