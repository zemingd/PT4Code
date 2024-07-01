n = gets.to_i
l_ary = gets.split(' ').map(&:to_i)

puts l_ary.combination(3).select { |ls|
  ls[0] < ls[1] + ls[2] && ls[1] < ls[0] + ls[2] && ls[2] < ls[0] + ls[1]
}.size