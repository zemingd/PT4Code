D, T, S = gets.chomp.split(' ').map(&:to_f)
if T >= D / S
  puts 'Yes'
else
  puts 'No'
end