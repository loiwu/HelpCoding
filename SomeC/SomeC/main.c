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

int main(int argc, const char * argv[]) {
    
    doTheThing (0);
    
    return 0;
}
