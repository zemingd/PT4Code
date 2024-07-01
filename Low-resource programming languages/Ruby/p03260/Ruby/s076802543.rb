n = gets.chomp.split.map(&:to_i)

a = n[0] * n[1]
if a % 2 == 0
  puts 'No'
else
  puts 'Yes'
end
