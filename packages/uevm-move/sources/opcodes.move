module uevm::opcodes {
    friend uevm::contract;

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
}