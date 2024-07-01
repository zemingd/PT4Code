n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

a = a.sort.reverse
sum = 0
a.each do |b|
  sum += b   
end

if a.find_all{|b| b * 4 * m >= sum }.size >= m
  puts 'Yes'
else
  puts 'No'
end