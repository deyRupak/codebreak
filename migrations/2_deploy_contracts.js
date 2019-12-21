var Person = artifacts.require("./person.sol");

module.exports = function (deployer) {
    deployer.deploy(Person);
};
