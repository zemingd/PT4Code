attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split
end
result = 0
for i in 0..2 do
  result += 1 if attrs[0][0][i] === attrs[1][0][i]
end
p result