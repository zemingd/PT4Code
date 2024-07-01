lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]

mis = 0
for i in 1..N do
  if i != lines[1][i-1] then
    mis += 1
  end
end
  
if mis <= 2 then
  print "YES"
else
  print "NO"
end