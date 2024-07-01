n = gets.to_i
p = gets.split.map(&:to_i)

count = 0
n.times do |i|
  count += 1 if p[i] != i + 1
end

if count == 0 || count == 2
  puts 'YES'
else
  puts 'NO'
end
