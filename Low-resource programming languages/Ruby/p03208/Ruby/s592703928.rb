datas = gets.split.map{|nn|nn.to_i}
n = datas[0]
k = datas[1]
hs = []
n.times do
  hs << gets.to_i
end

hs.sort!

def min a,b
  if a < b
    return a
  else
    return b
  end
end
ans = 1000001000
0.upto(n-k) do|first|
  ans = min(hs[first+k-1] - hs[first],ans)
end
puts ans.to_s