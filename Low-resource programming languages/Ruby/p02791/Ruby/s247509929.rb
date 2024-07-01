N = gets.to_i
P = gets.split.map(&:to_i)

ans = 0
min = P[0]
P.each do |pi|
  if pi <= min
    ans += 1
    min = pi
  end
end
puts ans
