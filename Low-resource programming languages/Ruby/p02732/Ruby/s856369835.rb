N = gets.to_i
num = gets.strip.split.map(&:to_i)
i = 0
ary = Array.new(N,0)
while i < N do
  ary[num[i]-1] += 1
  i += 1
end
sum = 0
j = 0
while j < N do
  sum += ary[j]*(ary[j]-1)/2 #すべての場合
  j += 1
end
k = 0
while k < N do
  puts sum-ary[num[k]-1]+1
  k += 1
end