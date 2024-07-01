N=gets.to_i
d=gets.split.map(&:to_i)
d.sort!
left = d[N/2-1]
right= d[N/2]
if left == right
  puts 0
else
  puts right - left
end