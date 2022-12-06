module uevm::stack {
    use std::vector;
    friend uevm::interpreter;
    friend uevm::instructions;

    struct Stack {
        data: vector<u256>,
    }

    public fun pop(self: &mut Stack): u256 {
        vector::pop_back<u256>(&mut self.data)
    }

    public fun peek(self: &Stack): u256 {
        *vector::borrow(&self.data, vector::length(&self.data) - 1)
    }
}
