datas = gets.split(" ").map{|nn|nn.to_i}
n = datas[0]
m = datas[1]
datas = gets.split(" ").map{|nn|nn.to_i}
if n >= m
  puts "0"
else
datas.sort!{|a,b|a<=>b}

kukan = datas[-1] - datas[0]

#n-1個の空白区間を探す
emps = []
i = 1
while(i < datas.length)
  emps << datas[i] - datas[i-1]
  i += 1
end

emps.sort!.reverse!
(n-1).times do|nn|
  kukan -= emps[nn]
end
puts kukan.to_s
end