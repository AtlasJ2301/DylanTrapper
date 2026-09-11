#include <iostream>
#include <string>
#include <filesystem>

int process(std::string cmd) {

  if (cmd == "exit") return 100;
  return 0;
}

int main() {
  std::string input;

  while (1) {
    std::cout << "> ";
    std::cin >> input;
    if (process(input) == 100) break;
  }
}