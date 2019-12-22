import Vue from 'vue'
import Router from 'vue-router'
import ComplexStorage from '@/components/ComplexStorage'
import SimpleStorage from '@/components/SimpleStorage'
import TutorialToken from '@/components/TutorialToken'
import govt from '@/components/govt'

import Welcome from '@/components/Welcome'


Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/signin',
      name: 'TutorialToken',
      component: TutorialToken
    },
    {
      path: '/exam/',
      name: 'SimpleStorage',
      component: SimpleStorage
    },
    {
      path: '/',
      name: 'Welcome',
      component: Welcome
    },
    {
      path:'/asd',
      name: 'ComplexStorage',
      component: ComplexStorage
    },
    {
      path:'/govt',
      name: 'govt',
      component: govt
    }
  ]
})
