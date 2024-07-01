h, n = gets.split(' ').map(&:to_i)
a = gets.split(' ').map(&:to_i)
atk = a.inject(:+)
h -= atk
if h > 0
  puts 'No'
else
  puts 'Yes'
end