A, B, C, D = gets.split.map(&:to_i)

c = (B / C) - (A / C) 
d = (B / D) - (A / D) 
lcm = C.lcm(D)
l = (B / lcm) - (A / lcm)

puts (B - A + 1) - (c + d - l)