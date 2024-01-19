pragma circom 2.0.3;

// include "https://github.com/0xPARC/circom-secp256k1/blob/master/circuits/bigint.circom";

template Example () {
    // we take 2 in
    signal input step_in[2];
    // and 2 out
    signal output step_out[2];
    // and an adder
    signal input adder;
    // out[0] is in[0] + adder
    // out[1] is in[0] + in[1]
    step_out[0] <== step_in[0] + adder;
    step_out[1] <== step_in[0] + step_in[1];
}

component main { public [step_in] } = Example();

/* INPUT = {
    "step_in": [1, 1],
    "step_out": [1, 2],
    "adder": 0
} */