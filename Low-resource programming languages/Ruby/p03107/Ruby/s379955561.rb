def read_i
  gets.chomp.split('').map(&:to_i)
end

s = read_i

count_0 = 0
s.each { |i| count_0 += 1 if i == 0 }
count_1 = s.count - count_0

if count_0 * count_1 == 0
  puts 0
elsif count_0 > count_1
  puts 2 * count_1
else
  puts 2 * count_0
end

