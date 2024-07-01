n, x = gets.split.map{|i| i.to_i }
m = []
n.times{ m << gets.to_i }

if (x - m.sum) >= m.min
  puts (x - m.sum) / m.min + n
else
  puts n
end