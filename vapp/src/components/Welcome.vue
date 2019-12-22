<template>
  <div v-if="isDrizzleInitialized">
    <ul>
        <li v-for="acm in accs">
        {{acm.ac}}
        </li>
    </ul>
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
          accs: [
              {ac: '0x3fbee2c74f999b987459a740319099528d6b7778'},
              {ac: '0xa98cf4574282c43f0b9f3080e4c4e38491058bec'},
              {ac: '0xb5695f1cb135b571f50efddc90274ed39d09bb10'},
              {ac: '0x503025020ee31d41139322338705b60f53293462'},
              {ac: '0x6090e82f35ece43ceb93a3547f52207ba8379af5'},
              {ac: '0x35316d278659d375d4bdf476f471764cc41ef470'},
              {ac: '0x3f9b5d4120875619c7830627a15c4713f9658cd1'},
              {ac: '0xfc59649e84b09267fe09e00d2ee58869a4677697'},
              {ac: '0x5c9564decca2c133d81872ad7d061b9c0af173a8'},
              {ac: '0xb37b383708369699ba0d35f2183ddf39c750de4b'},
            ]
      }
  }
}
</script>

<style></style>
