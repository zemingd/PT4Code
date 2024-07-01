a,b = gets.chomp.split.map(&:to_s)
c = a + b
d = c.to_i

e = Math.sqrt(d)
f = e.to_i

g =  e - f

if g == 0.0
  puts 'Yes'
else
  puts 'No'
end
