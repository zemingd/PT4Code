eat_num = gets.to_i
eat_j = gets.split.map(&:to_i)
m = gets.split.map(&:to_i)
m2 = gets.split.map(&:to_i)

total = 0
pre_j = 0
eat_j.each do |i|
  total += m[i - 1]
  total += m2[i -2] if pre_j == (i - 1) && i != 1
  pre_j = i
end
puts total
