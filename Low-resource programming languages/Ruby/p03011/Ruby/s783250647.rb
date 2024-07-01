P, Q, R = gets.split.map(&:to_i)


a = P + Q
b = Q + R
c = R + P


ans = [a,b,c].min

puts ans
