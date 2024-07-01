s = gets.chomp.chars
pre_num_of_one = s.sort.join.to_i
if pre_num_of_one == 0
  num_of_one = 0
else
  pre_num_of_one.to_s.chars.size
end
puts num_of_one
puts s.size - ((s.size - num_of_one) - num_of_one).abs