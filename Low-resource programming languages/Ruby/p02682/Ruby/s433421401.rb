line = gets.split(' ').map(&:to_i)

a = line[0]
b = line[1]
c = line[2]
k = line[3]

if k <= a then
  print k
elsif k <= a + b then
  print a
else
  print a - (k - a - b)
end