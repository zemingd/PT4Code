datas = gets.split(" ").map{|n|n.to_i}
n = datas[0]
d = datas[1]

ary = []
n.times{
	ary << gets.split(" ").map{|n|n.to_i}
}
ans = 0

for ii in 0..(n-2) do
  for jj in (ii+1)..(n-1) do
    #/ ary[ii] ary[jj]

    inc = 0
    for idx in 0..(d-1)
      inc += (ary[ii][idx] - ary[jj][idx]) * (ary[ii][idx] - ary[jj][idx])
    end
    if Math.sqrt(inc) % 1 == 0
    ans += 1
    end
  end
end
puts ans.to_s