gets
data = gets.split(" ").map{|nn|nn.to_i}

able_line = 0
ans = 0

data.each do|mt|
  if mt >= able_line
    able_line = mt
    ans += 1
  end
end

puts ans.to_s