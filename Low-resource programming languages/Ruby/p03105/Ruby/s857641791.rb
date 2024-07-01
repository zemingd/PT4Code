datas = gets.split(" ").map{|nn|nn.to_i}
a = datas[0]
b = datas[1]
c = datas[2]

if a * c > b
  puts (b / a).to_s
else
  puts c.to_s
end