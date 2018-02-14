import Vue from 'vue'
import Router from 'vue-router'
import Pets from '@/components/Pets'
import NewPet from '@/components/NewPet'
import Posts from '@/components/Posts'
import NewPost from '@/components/NewPost'
import EditPost from '@/components/EditPost'

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/pets',
      name: 'Pets',
      component: Pets
    },
    {
      path: '/',
      name: 'NewPet',
      component: NewPet
    },
    {
      path: '/posts',
      name: 'Posts',
      component: Posts
    },
    {
      path: '/posts/new',
      name: 'NewPost',
      component: NewPost
    },
    {
      path: '/posts/:id',
      name: 'EditPost',
      component: EditPost
    },
  ]
})