n = gets.to_i
arr = gets.chomp.split(' ').map(&:to_i)
sq_sum = arr.map {|n| n**2 }.sum
sum_sq = (arr.sum)**2
puts (sum_sq - sq_sum)/2