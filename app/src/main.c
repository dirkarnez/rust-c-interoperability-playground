#include <stdio.h>
#include "rusty.h"

int main() {
    int32_t result = sum(10, 20);
    printf("Result from Rust: %d\n", result);
    return 0;
}
