lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]
Mod = 10 ** 9 + 7
s2 = []
zero = "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
for i in 1..N do
  s2[i-1] = lines[1][i-1].to_s(2)
  len_lack = 60 - s2[i-1].length
  s2[i-1] = zero[1..len_lack] + s2[i-1]
end

answer = 0
for i in 1..50 do
  count1 = 0
  for j in 1..N do
    if s2[j-1][i-1] == "1" then
      count1 += 1
    end
  end
  answer += count1 * (N - count1) * (2 ** (60 - i))
end

print answer % Mod