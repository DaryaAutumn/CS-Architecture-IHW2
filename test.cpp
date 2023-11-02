#include <iostream>
#include <vector>
#include <valarray>

int main() {
    std::vector<float> test = {25, 1000, 2, 1, 3, 8, 36, 77};

    for (auto el: test) {
        std::cout << "Testing data: " << el << std::endl;
        std::cout << "Square root: " << std::sqrt(el) << std::endl << std::endl;
    }

}
