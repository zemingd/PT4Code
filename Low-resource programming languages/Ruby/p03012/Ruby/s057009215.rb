gets
numbers = gets.strip.split.map(&:to_i)

sum = numbers.inject(:+)
sum1 = 0
sum_arr = []
numbers.each{|i|
  sum1 += i
  sum2 = sum - sum1
  sum_arr << (sum1 - sum2).abs
}
puts sum_arr.min