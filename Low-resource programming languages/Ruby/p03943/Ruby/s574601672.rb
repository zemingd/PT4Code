inp = gets.chomp.split(' ').map { |i| i.to_i }
if (inp[0] + inp[1])  == inp[2] || (inp[0] + inp[2])  == inp[1] || (inp[1] + inp[2])  == inp[0]
  puts 'Yes'
else
  puts 'No'
end