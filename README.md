# quickID

'quickID' is a decentralized solution to identity crisis faced after being hit by a natural disaster or any other calamity that wipes away one's name from paper. It will help anyone with 'quickID' to gain access to government facilities in healthcare, financial, educational and other related domains. A trusted volunteer will assign a QR ID card generated as per the details told to him by the person in need of a valid document which proves his/her identity. This aims that sector which don't have documents against their proof of identity._

## Install

1. First ensure you've navigated to an empty folder as Truffle will download
   boxes in the current working directory.
   ```
   $ mkdir my-sweet-vue-dapp && cd $_
   ```

1. Execute the `unbox` command and watch truffle orchestrate devops magic.
   ```
   $ truffle unbox vue-box
   ```

## Test

1. Test the box. You'll need a browser and two terminal instances: one for
   truffle's develop console and one for Vue's dev server.

   a. Truffle terminal.
     - Start the development console
     ```
     $ truffle develop
     ```
     - Migrate the sample contracts
     ```
     truffle(develop)> migrate
     ```
     - wait for the migration to complete before proceeding

   b. Start the Vue dev server, which is located in the `vapp` folder
   ```
   $ cd vapp
   $ npm run serve
   ```
   c. Browser: You can test with or without metamask.
     - without MetaMask
       - Use Chrome's `incognito mode` or Firefox's `privacy mode` and navigate
         to: http://localhost:8080/
     - with MetaMask
       - Make sure you've set up metamask to use port 9545 and then navigate
         to: http://localhost:8080/
