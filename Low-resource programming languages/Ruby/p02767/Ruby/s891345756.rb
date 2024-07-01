n = gets.to_i
arr = gets.split(" ").map(&:to_i)

ave = (1.0 * arr.sum / n).round
puts arr.map{|i| (i - ave) ** 2 }.sum
