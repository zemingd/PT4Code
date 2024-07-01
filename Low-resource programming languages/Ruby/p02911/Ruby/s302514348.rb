lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]
K = lines[0][1]
Q = lines[0][2]

num_correct = []
for i in 1..N do
  num_correct[i-1] = 0
end
for i in 1..Q do
  num_correct[lines[i][0] - 1] += 1
end

win = []
for i in 1..N do
  if K - (Q - num_correct[i-1]) > 0 then
    win.push("Yes")
  else
    win.push("No")
  end
end
  
puts win