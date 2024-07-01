str = gets.split
P,Q,R = str[0].to_i, str[1].to_i, str[2].to_i

max = P

if Q > max
  max = Q
end
if R > max
  max = R
end

answer = P + Q + R - max
puts answer