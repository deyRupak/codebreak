<template>
    <div>
      <drizzle-contract
        contractName="person"
        method="count"
        label="Count"
      />
        <form><br>
        <div class="content-center">
          <input v-model="name" type="text" placeholder="First Name" class="form-control"><br>
          <input v-model="surname" type="text" placeholder="Last Name" class="form-control"><br>
          <select class="form-control" v-model="gender" placeholder="gender">
            <option :value="null" disabled>Select Gender</option>
            <option v-for="option in options" v-bind:value="option.value">
              {{ option.text }}
            </option>
          </select><br>
          <input v-model.number="damage" type="number" placeholder="damage" class="form-control" min="1" max="10" ><br>
          </div>
          <v-btn @click.prevent="onSubmit" rounded color="primary" dark>Submit</v-btn>
        </form>
      <br><br><br>
      <v-btn @click.prevent="onClick" rounded color="primary" dark>Check</v-btn>
          <br><br>
          <div> <qrcode-vue :value="ashdghgjhjhg" v-if="qwer" :size="size" level="H"></qrcode-vue></div>  
      <div>
      </div> 
    </div>
</template>

<script>

import QrcodeVue from 'qrcode.vue';
import { mapGetters } from 'vuex';
export default {
  name: 'ComplexStorage',
  computed: {
    ...mapGetters('contracts', ['getContractData']),
    ...mapGetters('drizzle', ['drizzleInstance']),
  },
  methods: {
    onSubmit() {
      this.drizzleInstance.contracts['person'].methods['adddetails'].cacheSend(this.name,this.surname,this.gender,this.damage)
    },
    onClick() {
        this.qwer="true";
        console.log('here')
    }
  },
  components: {
    QrcodeVue
  },  
  data() {
    return {
      qwer: 'false',
      size: 720,
      name: '',
      surname: '',
      gender: 'Male',
      damage: '',
      options: [
        {text: 'Male', value:'Male'},
        {text:'Female', value:'Female'},
        {text:'Other', value:'Other'}
      ],
      sample: {
        get_uintarray: {
          html:
            '<drizzle-contract contractName="ComplexStorage" method="get_uintarray" />'
        },
        singleDD: {
          html:
            '<drizzle-contract contractName="ComplexStorage" method="singleDD" />'
        }
      },
      value:'0xDb8f615bE1918CD90fE494c490258e5D69d98e2d',
      size:150,
    }
  }
}
</script>

<style scoped>
div.code {
  align-self: center;
}

div.flex-container {
  background-color: #efefef;
  display: flex;
}

div.flex-container > div {
  flex: 1;
}

.btn {
    display: inline-block;
    font-weight: 400;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    border: 1px solid transparent;
    padding: .375rem .75rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: .25rem;
    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}

.form-control {
  content-align: center;
    display: block;
    width: 40%;
    padding: .375rem .75rem;
    font-size: 1rem;
    line-height: 1.5;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: .25rem;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}

.content-center{
  min-width :40%;
  display: inline-block;
  flex-direction: column;
  text-align: center; 
  }
</style>
