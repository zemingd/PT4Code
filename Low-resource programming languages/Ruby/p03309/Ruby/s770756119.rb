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

datas.sort!

middle = 0
if datas.size % 2 == 0
  middle = datas[datas.size/2]
else
  middle = ((datas[(datas.size-1)/2] + datas[(datas.size-1)/2])/2).floor
end

sor = 0
datas.each do|da|
  sor += abs(da - middle)
end
puts sor.to_s