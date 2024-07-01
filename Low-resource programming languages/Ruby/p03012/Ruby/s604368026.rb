input = readlines()
n = input.shift.chomp.to_i
list = input.shift.chomp.split("\s").map{|x| x.to_i}

sum = list.sum()

min = nil
(1..n).each do |t|
  g1_sum = 0
  list.each_with_index do |l, i|
    g1_sum += l if (i + 1) <= t
  end
  diff = (g1_sum - (sum - g1_sum)).abs
  min = diff if min.nil? || min > diff
end

puts min