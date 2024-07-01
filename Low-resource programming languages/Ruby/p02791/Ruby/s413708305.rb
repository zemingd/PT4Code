N = gets.chomp.to_i
P = gets.chomp.split(' ').map(&:to_i)

count = 0
min = Float::INFINITY
P.each_with_index do |p_i, i|
  min = [min, p_i].min
  count += 1 if min == p_i
end

puts count
