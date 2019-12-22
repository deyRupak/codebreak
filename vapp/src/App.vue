<template>
  <div v-if="isDrizzleInitialized" id="app">
    <div class="highlight">
    <h1>QUICKID</h1></div>
    <router-view/>
    <div v-if="qwer"> <qrcode-vue :value="qwer" :size="size" level="H"></qrcode-vue></div>
  </div>
  <div v-else>Loading...</div> 
</template>

<script>
import TutorialToken from './components/TutorialToken'
import SimpleStorage from './components/SimpleStorage'
import ComplexStorage from './components/ComplexStorage'
import Welcome from './components/Welcome'
import { mapGetters } from 'vuex'
import QrcodeVue from 'qrcode.vue'

export default {
  name: 'app',
  components: {
    ComplexStorage,
    TutorialToken,
    SimpleStorage,
    QrcodeVue,
    Welcome
  },
  data (){
    return {
      value:'0xDb8f615bE1918CD90fE494c490258e5D69d98e2d',
      size:150,
    }
  },

  computed: mapGetters('drizzle', ['isDrizzleInitialized'])

}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

.highlight{
color: aliceblue;
background:rgb(158, 154, 154);
margin-top: -50px;
margin-bottom: 50px;

}
</style>
