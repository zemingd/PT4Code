x, n = gets.split(' ').map(&:to_i)
ps = n == 0 ? [] : gets.split(' ').map(&:to_i)

result = 100
min_abs = 100

target_arr = (0..100).to_a.select { |i| !ps.include?(i) }

target_arr.each do |i|
  abs = (x - i).abs
  if abs < min_abs
    result = i
    min_abs = abs
  elsif abs == min_abs && i < result
    result = i
  end
end

puts result
