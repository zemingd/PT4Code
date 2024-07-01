#include<iostream>
#include<string>
#include<algorithm>

int main() {
    std::string s;
    std::cin >> s;

    int b;
    int e;
    bool f1 = true;
    for (int i = 0; i < s.size(); i++)
    {
        if(s[i] == 'A' & f1) {
            b = i;
            f1 = false;
        }

        if(s[i] == 'Z') {
            e = i;
        }
    }

    std::cout << e - b + 1 << "\n";
}