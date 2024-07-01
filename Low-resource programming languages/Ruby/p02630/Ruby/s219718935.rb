#n,qの二重ループでO(10^10)でアウトでしょう
n = gets.to_i
num = gets.strip.split.map(&:to_i)
q = gets.to_i
ary = Array.new(10**5,0)
d = 0
while d < n do
  ary[num[d]-1] += 1
  d += 1
end
sum = num.sum
q.times do
  a,b = gets.strip.split.map(&:to_i)
  sum += ary[a-1]*(b-a)
  ary[b-1] += ary[a-1]
  ary[a-1] = 0
  puts sum
end