ints = gets.split(' ').map(&:to_i).inject(:*)

if ints % 2 == 0
  puts 'Even'
else
  puts 'Odd'
end