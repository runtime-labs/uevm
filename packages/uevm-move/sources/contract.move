module uevm::contract {
    use std::vector;
    use uevm::opcodes;

    friend uevm::evm;
    friend uevm::interpreter;


    //dont't support cross module const

    //0x0 range - arithmetic ops.
    const STOP: u8 = 0x0;
    const ADD: u8 = 0x1;
    const MUL: u8 = 0x2;
    const SUB: u8 = 0x3;
    const DIV: u8 = 0x4;
    const SDIV: u8 = 0x5;
    const MOD: u8 = 0x6;
    const SMOD: u8 = 0x7;
    const ADDMOD: u8 = 0x8;
    const MULMOD: u8 = 0x9;
    const EXP: u8 = 0xa;
    const SIGNEXTEND: u8 = 0xb;

    struct Contract {
        code: vector<u8>
    }

    const DEFAULT_CODE: vector<u8> = x"6080604052348015600f57600080fd5b506004361060285760003560e01c8063c298557814602d575b600080fd5b60336045565b60405190815260200160405180910390f35b6000805460529060016057565b905090565b80820180821115607757634e487b7160e01b600052601160045260246000fd5b9291505056fea26469706673582212205a0ea565facd6b55146331f3e72976fe88e8ab27d116fb2f6d86e3ec4b0520ba64736f6c63430008110033";

    public fun new(): Contract {
        Contract { code: DEFAULT_CODE }
    }

    public fun getCode(self: &Contract): vector<u8> {
        self.code
    }

    public fun getOp(self: &Contract, n: u64): u8 {
        if (n <vector::length(&self.code)) {
            return *vector::borrow<u8>(&self.code, n)
        };
        return STOP
    }
}
