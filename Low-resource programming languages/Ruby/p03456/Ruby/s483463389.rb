a, b = gets.chomp.split
c = (a + b).to_i

if (1..200).any? { |v| c % v == 0 && c / v == v }
  puts 'Yes'
else
  puts 'No'
end
