_N = gets.to_i
A = gets.split.map {|e| e.to_i}
ans = 0
A.each do |e|
  ans += e - 1
end
puts ans
