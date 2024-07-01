# coding: utf-8
require 'scanf'

while true
  input = scanf("%d %d");
  break if input[0] == 0 and input[1] == 0
  input.sort!
  printf("%d %d\n",input[0], input[1])
end