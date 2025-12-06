#include <stdio.h>
#include <CUnit/CUnit.h>
#include <CUnit/Basic.h>
#include "../include/hello.h"

void test_hello() {
    CU_ASSERT_STRING_EQUAL(hello(), "Hello, World!");
}

int main() {
    CU_initialize_registry();
    CU_pSuite suite = CU_add_suite("Hello Suite", 0, 0);
    CU_add_test(suite, "test_hello", test_hello);
    CU_basic_run_tests();
    CU_cleanup_registry();
    return 0;
}