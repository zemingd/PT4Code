P, Q, R = gets.split.map!(&:to_i)

min = P + Q
if min > Q + R
  min = Q + R
elsif min > R + P
  min = R + P
end

puts min