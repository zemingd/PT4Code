# AtCoder Beginner Contest 089B

n = gets.to_i
array = gets.split(" ")
count = array.uniq.length

if count == 0 then puts "Three"         else puts "Four" end
