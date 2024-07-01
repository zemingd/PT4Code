input = gets.to_s.split(" ").map(&:to_i)
value_A = gets.to_s.split(" ").map(&:to_i)

waribiki = input[1]

index = 0
sum = 0

waribiki.times {
  index = value_A.index(value_A.max)
  value_A[index] = value_A[index] / 2
}

value_A.each { |i| sum += i }

puts sum