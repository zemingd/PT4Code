A, B = gets.split.map(&:to_i)
l = [A, B].min
r = [A, B].max
c = r - l
if c.even?
  puts l + c / 2
else
  puts 'IMPOSSIBLE'
end
