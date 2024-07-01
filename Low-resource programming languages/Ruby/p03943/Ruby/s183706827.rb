a, b, c  = gets.chomp.split.map(&:to_i)

total = a + b + c
max = [a, b, c].max
rem = total - max
puts max == rem ? "Yes" : "No"