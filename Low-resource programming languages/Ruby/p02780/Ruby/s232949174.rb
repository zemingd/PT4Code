ary_size, k = gets.chomp.split.map(&:to_i)
ary = gets.chomp.split.map(&:to_i)

list = {}
ary.uniq.each do |i|
  list[i] = (i + 1) / 2.to_f
end

expected_value = []
v_m = 0.0
ary.each_with_index do |x, i|
  break if i + k > ary_size
  total = 0.0
  k.times do |num|
    pick_num = i + num
    total += list[ary[pick_num]]
  end
  v_m = total if v_m < total
end
puts sprintf("%.12f", v_m)