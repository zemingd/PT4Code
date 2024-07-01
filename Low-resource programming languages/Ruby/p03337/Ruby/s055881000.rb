# Your code here!

A, B =  gets.chomp.split(" ").map(&:to_i)
add = A + B
subs = A - B
mul = A * B
a = Array.new([add, subs, mul])
puts a.max
