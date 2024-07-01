N = gets.chomp.to_i
An = gets.chomp.split(" ").map(&:to_i)

m = An.reduce {|i, j|
  i.lcm(j)
} - 1

puts An.reduce(0) {|sum, a|
  sum + m % a
}