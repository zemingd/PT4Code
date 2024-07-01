N,X = gets.chomp.split(" ").map(&:to_i)
M = []
for i in 1..N
  M.push(gets.chomp.to_i)
end
m_sum = M.inject(:+)
flag = X - m_sum
if flag > 0
  M.sort!
  max = N + (flag/M[0])
end
if flag == 0
  max = N
end

print(max)