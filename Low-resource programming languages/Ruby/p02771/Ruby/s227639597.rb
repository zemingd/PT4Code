N = gets.chomp.split(' ').map(&:to_i)

if N.uniq.size == 2
  puts 'Yes'
else
  puts 'No'
end