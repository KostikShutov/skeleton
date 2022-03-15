import { createRouter, createWebHashHistory, RouteRecordRaw } from "vue-router";
import Home from "../views/Home.vue";
import Control from "../views/Control.vue";

const routes: Array<RouteRecordRaw> = [
  {
    path: "/",
    name: "Home",
    component: Home,
  },
  {
    path: "/control",
    name: "Control",
    component: Control,
  },
];

const router = createRouter({
  history: createWebHashHistory(),
  routes,
});

export default router;
