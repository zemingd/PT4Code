# coding: utf-8
require 'scanf'

input = scanf("%d %d");
puts "#{input[0]/input[1]} #{input[0]%input[1]} #{input[0].to_f/input[1]}"