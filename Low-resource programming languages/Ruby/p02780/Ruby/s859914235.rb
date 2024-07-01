ary_size, k = gets.chomp.split.map(&:to_i)
ary = gets.chomp.split.map(&:to_i)

list = {}
ary.each do |i|
  list[i] = (i + 1) / 2.to_f unless list.has_key?(i)
end

expected_value = []
ary.each_with_index do |x, i|
  break if i + k > ary_size
  total = 0.0
  k.times do |num|
    pick_num = i + num
    total += list[ary[pick_num]]
  end
  expected_value << total
end
expected_value_max = expected_value.max
puts sprintf("%.12f", expected_value_max)