##templete
n = gets.chomp.to_i
a = gets.chomp.split(" ").map { |e| e.to_i }

res = []
ans = 0
index = 0
m = 10000000000

def summ(a)
  leng = a.length
  res = 0
  for i in 0..leng-1 do
    res += a[i]
  end
  res
end


for i in 0..n-1 do
  if a[i] < 0
    res[index] = a[i]
    index += 1
  else
    ans += a[i]
    m = a[i] if a[i] < m
  end
end

res = res.sort

leng = res.length

if leng % 2 == 0
  ans -= summ(res)
else
  for i in 0..leng-2 do
    ans += -res[i]
  end

  if -res[leng-1] > m
    ans -= res[leng-1]
    ans -= 2*m
  else
    ans += res[leng-1]
  end
end


puts ans
