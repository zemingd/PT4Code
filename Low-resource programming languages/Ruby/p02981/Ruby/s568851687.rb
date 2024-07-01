line = gets.split(' ').map(&:to_i)

N = line[0]
A = line[1]
B = line[2]

if N * A < B then
  print N * A
else
  print B
end