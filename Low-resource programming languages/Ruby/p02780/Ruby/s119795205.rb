ary_size, k = gets.chomp.split.map(&:to_i)
ary = gets.chomp.split.map(&:to_i)
ary_max = ary.max

expected_value_list = []
ary_max.times do |i|
  expected_value_list << (i + 2) / 2.to_f
end

expected_value = []
ary.each_with_index do |x, i|
  break if i + k > ary_size
  total = 0.0
  k.times do |num|
    pick_num = i + num
    list_index = ary[pick_num] - 1
    total += expected_value_list[list_index]
  end
  expected_value << total
end
expected_value_max = expected_value.max
puts sprintf("%.12f", expected_value_max)