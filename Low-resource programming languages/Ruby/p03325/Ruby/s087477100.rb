n =gets.to_i
datas = gets.split(" ").map{|nn|nn.to_i}

ans = 0
datas.each do|data|
  while(data % 2 == 0)
    data /= 2
    ans += 1
  end
end

puts ans.to_s