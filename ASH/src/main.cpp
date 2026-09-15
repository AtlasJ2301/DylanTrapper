#include <iostream>
#include <string>
#include <filesystem>

// String Tools
std::string until(char chr, std::string str) {
  std::string out;

  int i;
  for (i = 0; str[i] != chr; i++) {
    if (i == str.size()) break;
    out[i] = str[0];
  }

  return out;
}
// String Tools

int process(std::string cmd) {
  std::string arg[10];
  arg[0] = until(' ', cmd);
  if (cmd == "exit") return 100;
  std::cout << "/bin/" << arg[0];
  return 0;
}

int main() {
  std::string input;

  while (1) {
    std::cout << "> ";
    std::getline(std::cin, input);
    if (process(input) == 100) break;
  }
}