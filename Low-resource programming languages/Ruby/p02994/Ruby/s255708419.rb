n,l = gets.split.map(&:to_i)
l_arr = []
abs_arr = []

n.times{
l_arr <<  l
l += 1
}

n_sum = l_arr.sum

l_arr.each{|v|
abs_arr << (n_sum - v)
}

puts abs_arr.min_by do |x|
   (n_sum - x).abs
end
