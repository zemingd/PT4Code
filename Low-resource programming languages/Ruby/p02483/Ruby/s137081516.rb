require 'scanf'

input = scanf("%d %d %d")
input.sort!
puts "#{input[0]} #{input[1]} #{input[2]}"