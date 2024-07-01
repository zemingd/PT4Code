f = readline
f = f.split(" ").map(&:to_i)

a = f[0] * f[1]
b = f[2]

if a < b
  puts a
else
  puts b 
end