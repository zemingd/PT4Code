lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]
per = (1..N).to_a.permutation.to_a

a = per.index(lines[1])
b = per.index(lines[2])

if a < b then
  print b - a
else
  print a - b
end