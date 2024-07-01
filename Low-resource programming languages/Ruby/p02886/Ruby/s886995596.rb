n = gets.chomp.to_i
d_list = gets.chomp.split.map(&:to_i)

res = 0
(0..(n-2)).each do |i|
  (1..(n-i-1)).each do |j|
    res += d_list[i] * d_list[i+j]
  end
end

puts res
