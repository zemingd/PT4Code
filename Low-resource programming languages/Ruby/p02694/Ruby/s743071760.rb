X = gets.to_i

sum = 100
puts 1.step {|i|
  sum += sum / 100
  break i if X <= sum
}