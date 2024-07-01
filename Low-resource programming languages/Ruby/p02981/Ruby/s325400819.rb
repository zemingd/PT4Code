line = gets.split(' ').map(&:to_i)
n = line[0]
a = line[1]
b = line[2]
if a*n >= b then
  puts b
else
  puts(a*n)
end