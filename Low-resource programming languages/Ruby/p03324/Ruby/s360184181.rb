d,n = gets.split(' ')
d = d.to_i
n = n.to_i

if d == 0
  puts n
elsif d == 1
  puts n * 100
elsif d == 2
  puts n * 10000
end