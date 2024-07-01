n = gets.to_i
datas = gets.split(" ").map{|nn|nn.to_i}
ans = datas.inject(:+)
ans -= datas.size

puts ans.to_s