a = gets.split(' ').map(&:to_i).inject(:*)

if a % 2 == 0
  text = 'even'
else
  text = 'odd'
end
puts text