N = gets.chomp
sum = N.split('').map(&:to_i).inject(:+)
if N.to_i % sum == 0
  puts 'Yes'
else
  puts 'No'
end