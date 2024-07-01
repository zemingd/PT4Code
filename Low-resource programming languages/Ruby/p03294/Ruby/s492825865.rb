n = gets.chomp.to_i
ary = gets.chomp.split.map(&:to_i)
ans = ary.sum - n
puts ans
