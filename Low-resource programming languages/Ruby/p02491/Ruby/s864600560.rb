# coding: utf-8
require 'scanf'

input = scanf("%d %d");
printf("%d %d %.5f\n", input[0]/input[1], input[0]%input[1], input[0].to_f/input[1])