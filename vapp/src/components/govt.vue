<template>
    <div>
         <form><br>
        <div class="content-center">
          <input v-model="address" type="text" placeholder="Address" class="form-control"><br>
          <v-btn @click.prevent="onSubmit" rounded color="primary" dark>Submit</v-btn>

        </div>


         </form>


    </div>
</template>


<script>
import { mapGetters } from 'vuex';

export default {

  name: 'govt',
  data(){
      return{
          address:''
      }
  },
  computed: {
    ...mapGetters('contracts', ['getContractData']),
    ...mapGetters('drizzle', ['drizzleInstance']),
  },
   methods: {
     onSubmit() {

     var x= this.drizzleInstance.contracts['person'].methods['sabkidetails'].cacheCall(this.address);
    console.log(x);
    },
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
    width: 80%;
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

