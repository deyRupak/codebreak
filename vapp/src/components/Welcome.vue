<template>
  <div v-if="isDrizzleInitialized">
   <v-simple-table light class="table">
    <template v-slot:default>
      <thead>
        <tr>
          <th class="text-center">ADDRESS</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="item in desserts" :key="item.name">
          <router-link :to="{name: 'ComplexStorage'}">
          <td>{{ item.name }}</td>
          </router-link>
        </tr>
      </tbody>
    </template>
  </v-simple-table>
  </div>
  <div v-else>Loading...</div>
</template>

<script>
import { mapGetters } from 'vuex'

export default {
  name: 'Welcome',
  computed: mapGetters('drizzle', ['isDrizzleInitialized']),
  data (){
      return{
          desserts: [
              {name: '0xbcB65c5D9326D5a238E83CdaA787FA34F11fF501'},
              {name: '0x5b87b1034dCEbf7ab4A85E4fC591fEcf5072Ab0E'},
              {name: '0xA786dE0F4638c13c4034F365e00C2352897106c4'},
              {name: '0xA786dE0F4638c13c4034F365e00C2352897106c4'},
              {name: '0x6a2004975273c9675c558B1ebdfdDd24F042F03a'},
              {name: '0x45A2ac8540fB808069A55E96cB942F241140A90a'},
              {name: '0x69951F580aBb72d66B50A7eA822A09BF0A976620'},
              {name: '0x0836363EF9dBCEe4bf83136d6009ec364f09905E'},
              {name: '0xEFEa667c04779109b1c3adF22e6500455034930C'},
              {name: '0xD4659f0d70b7674bA559E595b3285Bb14f235a11'},
            ]
      }
  }
}
</script>

<style>
.table{


}



</style>
