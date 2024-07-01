hp, a = gets.split.map{|n| n.to_i}

cnt = 0
while(hp > 0) do
  cnt += 1
  hp -= a
end
puts cnt