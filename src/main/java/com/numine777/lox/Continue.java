package com.numine777.lox;

class Continue extends RuntimeException {
    Continue() {
        super(null, null, false, false);
    }
}
