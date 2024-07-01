lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

A = lines[0][0]
B = lines[0][1]
C = 10 ** 6 + 1

divs = []
for i in 1..C do
  if A % i == 0 and B % i == 0 then
    divs.push(true)
  else
    divs.push(false)
  end
end
  
for i in 2..C do
  if divs[i-1] then
    for j in (i+1)..C do
      if j % i == 0 then
        divs[j-1] = false
      end
    end
  end
end
    
ans = 0
for i in 1..C do
  if divs[i-1] then
    ans += 1
  end
end
puts ans