lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]

ans = 0
max = 0
for i in 1..N do
  if lines[1][i-1] >= max then
    ans += 1
    max = lines[1][i-1]
  end
end
  
puts ans