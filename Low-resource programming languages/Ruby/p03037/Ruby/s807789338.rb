lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]
M = lines[0][1]

left = []
right = []
for i in 1..M do
  left[i-1] = lines[i][0]
  right[i-1] = lines[i][1]
end

left.sort!.reverse!
right.sort!

puts right[0] - left[0] + 1