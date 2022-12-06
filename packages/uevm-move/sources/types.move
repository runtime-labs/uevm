module uevm::types {

    struct Tx has drop{
        value: u256,
        to: address,
        input: vector<u8>,
        r: u128,
        s: u128,
        v: u8,
    }

    public fun newTx(value: u256, to: address, input: vector<u8>): Tx {
        Tx {
            value,
            to,
            input,
            r: 0,
            s: 0,
            v: 0
        }
    }
}
