num = gets.split.map(&:to_i)
num.sort!
num.reverse!
sum = num[0] * 10
num.shift
sum += num.inject(:+)
puts sum
