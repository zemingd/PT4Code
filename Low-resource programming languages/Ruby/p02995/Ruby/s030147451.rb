a, b, c, d = gets.chomp.split(" ").map(&:to_i)

a_multiple = a / c + a / d - a / c.lcm(d)
b_multiple = b / c + b / d - b / c.lcm(d)

ans = (b-b_multiple) - (a-a_multiple)
ans += 1 if a%c != 0
puts ans