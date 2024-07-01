lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]
Max = 10 ** 6

a = []
for i in 1..Max do
  a[i-1] = 0
end
lines[1].each do |i|
  a[i-1] += 1
end

for i in 1..Max do
  if a[i-1] >= 1 then
    j = 2
    while i * j <= Max do
      a[i*j-1] = 0
      j += 1
    end
  end
end
  
ans = 0
for i in 1..Max do
  if a[i-1] == 1 then
    ans += 1
  end
end
  
print ans