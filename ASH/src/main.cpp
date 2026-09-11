#include "as/standard"
#include <iostream>

int process(char* inputcmd) {
  as::string cmd;

  cmd.set(inputcmd);
  if (cmd.cmp({"testing"})) as::printf("Working");
  return "";
}

int main() {
  char input[50];

  while (input != "exit") {
    std::cout << "> ";
    std::cin >> input;
    process(input);
  }
}