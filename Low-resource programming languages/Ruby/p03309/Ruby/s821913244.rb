def abs(n)
  if n > 0
    return n
  else
    return -n
  end
end
n = gets.to_i
datas = gets.split(" ").map{|nn|nn.to_i}
size = datas.size
for i in 0..(size-1) do
  datas[i] -= i + 1
end
standard = datas.min()
sorrow = 0
last_sorrow = 10000000000
ans = 0
while true
  sorrow = 0
  datas.each do|data|
    sorrow += abs(data-standard)
  end
  if last_sorrow == sorrow
    ans = last_sorrow
    break
  end
  if last_sorrow < sorrow
    ans = last_sorrow
    break
  end

  last_sorrow = sorrow
  standard += 1
end

puts ans.to_s