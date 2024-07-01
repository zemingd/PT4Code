a, b = gets.chomp.split(" ").map(&:to_i)
c = a * b
print Even if c % 2 == 0
print Odd if c % 2 != 0