line = gets.split(' ').map(&:to_i)

A = line[0]
B = line[1]
C = line[2]

if B / A > C then
  puts C
else
  puts B / A
end