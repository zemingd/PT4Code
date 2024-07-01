require 'scanf'
input = scanf("%d %d")
a = input[0]
b = input[1]
if a > b
 puts "#{a}>#{b}"
elsif a == b
 puts "#{a}==#{b}"
else
 puts "#{a}<#{b}"
end