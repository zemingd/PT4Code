lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]

min = 100000000000000000000
answer = 0
for i in 1..N do
  if lines[1][i-1] <= min then
    answer += 1
    min = lines[1][i-1]
  end
end
  
print answer