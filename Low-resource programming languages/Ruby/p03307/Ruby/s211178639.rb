#include <iostream>

int main()
{
    int n;
    std::cin >> n;

    if (n % 2) {
        std::cout << n * 2 << std::endl;
    } else {
        std::cout << n << std::endl;
    }
}
