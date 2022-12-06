module uevm::evm {
    use std::signer;

    friend uevm::interpreter;
    friend uevm::instructions;

    struct EVM {

    }

    public fun call(addr: address, input: vector<u8>) {}
}
