//
//  main.c
//  SomeC
//
//  Created by Loi Wu on 6/15/15.
//  Copyright (c) 2015 Loi Wu. All rights reserved.
//

#include <stdio.h>

void printHello () {
    printf("Hello, World!");
}

void printGoodbye () {
    printf("Goodbye, World!");
}

void doTheThing (int type) {
    if (type == 0) {
        printHello();
    } else {
        printGoodbye();
    }
}

void doSomeThing (int type) {
    void (*func)();
    if (type == 0) {
        func = printHello;
    } else {
        func = printGoodbye;
    }
    func();
}

int main(int argc, const char * argv[]) {
    
    doTheThing (0);
    doSomeThing (1);
    
    return 0;
}
