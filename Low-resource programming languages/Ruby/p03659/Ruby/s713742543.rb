N = gets.to_i
a_list = gets.split.map(&:to_i)

f_list = Array.new(N)
f_list[0] = a_list[0]
(1...(a_list.size)).each do |i|
  f_list[i] = f_list[i - 1] + a_list[i]
end

b_list = Array.new(N)
b_list[0] = a_list[-1]
(1...(a_list.size)).each do |i|
  b_list[i] = b_list[i - 1] + a_list[-(i + 1)]
end

min = 2 << 60
(0...(a_list.size - 1)).each do |i|
  j = -i - 1 - 1
  min = [(f_list[i] - b_list[j]).abs, min].min
end
puts min
