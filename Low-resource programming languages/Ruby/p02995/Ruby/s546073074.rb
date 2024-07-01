A, B, C, D = gets.split.map(&:to_f)
E = C.to_i.lcm(D.to_i)

x = (B / C).floor - (A / C).ceil + 1
y = (B / D).floor - (A / D).ceil + 1
z = (B / E).floor - (A / E).ceil + 1

puts ((B - A + 1) - (x + y - z)).to_i