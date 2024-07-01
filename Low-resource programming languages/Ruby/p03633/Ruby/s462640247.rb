T = Array.new(N=gets.to_i) { gets.to_i }

ans = 1
T.each do |t|
  ans = ans.lcm(t)
end
puts ans