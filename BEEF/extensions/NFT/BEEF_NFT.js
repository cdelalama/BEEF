



function getBalance(address){
    const abi = []
    const mySmartContractAddress = "0x73592200D7A69cf3fc36F82bf0c792A4ee8ABAF9";
    const web3 = new Web3("HTTP://127.0.0.1:7545");
    const mySmartContract = new web3.eth.Contract(abi, mySmartContractAddress);   
    mySmartContract.methods.balanceOf(address).call().then((data) => {
        console.log(data);
        GMS_API.send_async_event_social(data);


    })


}