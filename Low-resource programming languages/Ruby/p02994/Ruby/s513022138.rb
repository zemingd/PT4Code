n,l = gets.split.map(&:to_i)
l_arr = []
abs_arr = []


n.times{
l_arr <<  l
l += 1
}

l_arr.each{|v|
abs_arr << (l_arr.sum - v)
}

p abs_arr.min_by do |x|
  (l_arr.sum - x).abs
end
