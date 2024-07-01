a,b = gets.chomp.split.map(&:to_i)
left = [(12.5 * a).ceil,10 * b].max
right = [10 * (b+1),12.5 * (a+1)].min
if left > right
  puts -1
else
  puts left
end
