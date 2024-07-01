n = gets.chomp.to_i
a = gets.chomp.split().map(&:to_i)
b = a.inject(:*)

print b > 10**18 ? -1 : b