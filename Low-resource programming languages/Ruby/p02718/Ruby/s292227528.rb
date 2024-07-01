lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

n = lines[0][0]
m = lines[0][1]
a = lines[1]

total_votes = 0
for i in 1..n
  total_votes += a[i-1]
end

result = 0

for i in 1..n do
  if a[i-1] >= total_votes / (4.0 * m) then
    result += 1
  end
end

if result >= m then
  print "Yes"
else
  print "No"
end