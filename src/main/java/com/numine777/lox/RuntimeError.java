package com.numine777.lox;

class RuntimeError extends RuntimeException {
    final Token token;

    RuntimeError(Token token, String message) {
        super(message);
        self.token = token;
    }
}