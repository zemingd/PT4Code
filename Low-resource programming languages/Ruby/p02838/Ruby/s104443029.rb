lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]
Mod = 10 ** 9 + 7
s2 = []
count1 = []
zero = "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
for i in 1..60 do
  count1[i-1] = 0
end
for i in 1..N do
  s2[i-1] = lines[1][i-1].to_s(2)
  len_lack = 60 - s2[i-1].length
  s2[i-1] = zero[1..len_lack] + s2[i-1]
  for j in 1..60 do
    if s2[i-1][j-1] == "1" then
      count1[j-1] += 1
    end    
  end
end

power2 = [1]
for i in 1..59 do
  power2.push(power2[-1] * 2)
end

answer = 0
for i in 1..60 do
  answer += count1[i-1] * (N - count1[i-1]) * power2[-i]
end

print answer % Mod