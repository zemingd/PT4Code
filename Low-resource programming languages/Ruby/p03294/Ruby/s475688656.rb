n = gets.chomp.to_i
ary = gets.chomp.split.map(&:to_i)
sum = 0
ary.each do |item|
  sum += item
end
ans = sum - n
puts ans
