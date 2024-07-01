n, m = gets.split(" ").map(&:to_i)
bridges = Array.new(m){Array.new(2)}

m.times do |i|
  bridges[i][0], bridges[i][1] = gets.split(" ").map(&:to_i)
end

bridges = bridges.sort_by{|a,b| b}

ans = 1
prev = bridges[0][1] - 1
m.times do |i|
  next if bridges[i][0] <= prev
  ans += 1
  prev = bridges[i][1] - 1
end

puts ans
