import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import MoodSelect from '../views/MoodSelect.vue'
import LoginView from '../views/LoginView.vue'
import ResultsView from '../views/ResultsView.vue'
import ForumView from '../views/ForumView.vue'
// 1. IMPORTA LA NUOVA VISTA
import RegisterView from '../views/RegisterView.vue' 

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    { path: '/', name: 'home', component: HomeView },
    { path: '/mood-select', name: 'mood-select', component: MoodSelect },
    { path: '/login', name: 'login', component: LoginView },
    { path: '/results', name: 'results', component: ResultsView },
    { path: '/forum', name: 'forum', component: ForumView },
    
    // 2. AGGIUNGI LA ROTTA REGISTRAZIONE
    { 
      path: '/register', 
      name: 'register', 
      component: RegisterView 
    }
  ]
})

export default router