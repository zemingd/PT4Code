# coding: utf-8

require 'scanf'
input = scanf("%d %d %d")
input.sort!

printf("%d %d %d\n", input[0], input[1], input[2])