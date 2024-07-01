a, b = gets.chomp.split(" ").map(&:to_i)

sum = a + b
sub = a - b
mul = a * b

max = sum > sub ? sum : sub
max = max > mul ? max : mul

p max