module uevm::interpreter {

    use uevm::evm::EVM;
    use uevm::contract::Contract;
    use uevm::stack::Stack;
    use uevm::memory::Memory;

    friend uevm::instructions;

    struct Interpreter {
        evm: EVM
    }

    struct ScopeContext {
        Stack: Stack,
        memory: Memory,
        contract: Contract
    }

    public fun run(addr: &Contract, input: vector<u8>) {}
}
