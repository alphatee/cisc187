#include <iostream>
#include <algorithm>
#include <vector>
 
void print_func(int y) {
  std::cout << y << std::endl;
}

int main() {
  std::vector<int> numbers {3, 1, 4, 1, 5, 9};
  std::for_each(numbers.begin(), numbers.end(), print_func);

  // repeat with lambda
  std::for_each(numbers.begin(), numbers.end(), 
      [] (int y) { std::cout << y << std::endl; });
}

