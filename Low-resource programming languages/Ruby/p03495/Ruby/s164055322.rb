k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
c = a.group_by(&:itself).values.map(&:size).sort

if c.size - k <= 0
  puts 0
else
  puts c[0, c.size - k].inject(:+)
end