lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]

result = "APPROVED"
for i in 1..N do
  s = lines[1][i-1]
  if s % 2 == 0 then
    if s % 3 != 0 and s % 5 != 0 then
      result = "DENIED"
    end
  end
end
    
print result