#include <iostream>
#include "gtest/gtest.h"

using namespace std;

int add(int a , int b) {
    return a + b;
}

TEST(TestSuite1, add_equal) {
    EXPECT_EQ( 5, add(1, 4) );
}

GTEST_API_ int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
    
}
