s, t = gets.split
a, b = gets.split.map(&:to_i)
u = gets
if u == s
  puts [a-1, b].join(' ')
else
  puts [a, b-1].join(' ')
end