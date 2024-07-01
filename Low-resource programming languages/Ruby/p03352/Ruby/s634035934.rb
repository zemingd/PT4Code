x = gets.to_i
is_exp_arr = Array.new(x+1, false)
is_exp_arr[1] = true
(2..x).each do |b|
  p = 2
  while (a = b ** p)  <= x do
    is_exp_arr[a] = true
    p += 1
  end
end
puts is_exp_arr.map.with_index { |e, i| e ? i : nil }.compact.max
