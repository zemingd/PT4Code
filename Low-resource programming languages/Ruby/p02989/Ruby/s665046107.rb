n = gets.strip.to_i
d = gets.strip.split.map(&:to_i)

d.sort!
if n.even?
  puts (d[n/2]-d[n/2-1])
else
  puts '0'
end