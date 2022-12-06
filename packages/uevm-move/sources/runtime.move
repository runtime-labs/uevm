script {
    use std::debug::print;
    use uevm::contract;
    use uevm::contract::Contract;
    use uevm::types::Tx;
    use uevm::types;

    fun main(){
        //ethereum contract runtime code
        let code = x"6080604052348015600f57600080fd5b506004361060285760003560e01c8063c298557814602d575b600080fd5b60336045565b60405190815260200160405180910390f35b6000805460529060016057565b905090565b80820180821115607757634e487b7160e01b600052601160045260246000fd5b9291505056fea26469706673582212205a0ea565facd6b55146331f3e72976fe88e8ab27d116fb2f6d86e3ec4b0520ba64736f6c63430008110033";

        //ethereum calldata
        let calldata = x"c2985578";

        //wrap to ethereum tx
        let tx: Tx = types::newTx(10, @0x0, calldata);

        //wrap to Aptos tx

        //unwrap Aptos tx

        //unwrap ethereum tx

        //extract ethereum calldata

        //call to the contract

        //get output from evm

        //wrap to Aptos tx receipt

        //wrap to ethereum receipt

        //extract output

        let output = x"0000000000000000000000000000000000000000000000000000000000000001";
    }
}