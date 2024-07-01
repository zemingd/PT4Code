#O(N)ならいけそう
N = gets.to_i
num = gets.strip.split.map(&:to_i)
i = 0 #配列の番号
c = 1
while i<N do
  if num[i] == c
    c += 1
  end
  i += 1
end
if c==1
  puts "-1"
else
  puts N-c+1
end