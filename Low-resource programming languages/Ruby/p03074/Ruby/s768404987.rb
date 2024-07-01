str1 = gets.split
N,K = str1[0].to_i, str1[1].to_i

S = gets.chomp
p = []
p[0] = 0
x = 1

if S[0] == "0"
  p[1] = 0
  x = 2
end

for i in 1...N
  if S[i] != S[i-1]
    p[x] = i
    x += 1
  end
end

p[p.size] = N

if p.size % 2 == 1
  p[p.size] = N
end

if p.size/2 - 1 <= K
  puts N
  exit
end

answer = 0
i = 1 + 2*K
j = 0

while i < p.size do
  if answer < p[i] - p[j]
    answer = p[i] - p[j]
  end
  i += 2
  j += 2
end

puts answer