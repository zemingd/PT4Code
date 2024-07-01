s = gets.chomp.split('').map(&:to_i)
s_length = s.length
a = (1..s_length).map { |i| (i % 2 == 1) ? 0 : 1 }
b = a.map { |i| i.to_s == '0' ? 1 : 0 }
count_a = 0
count_b = 0
s.each_with_index do |i, index|
  if i == a[index]
    count_b += 1    
  else
    count_a += 1
  end
end

puts count_a > count_b ? count_b : count_a