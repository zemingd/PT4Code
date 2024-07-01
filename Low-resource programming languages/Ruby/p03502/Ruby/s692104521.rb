n = gets.chomp
total = 0
n.chars.each do |i|
  total += i.to_i
end

if n.to_i % total == 0
  puts 'Yes'
else
  puts 'No'
end