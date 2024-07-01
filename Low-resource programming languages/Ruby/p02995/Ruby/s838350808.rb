a, b, c, d = gets.split(" ").map(&:to_i)

ans = (b - (b / c) - (b / d) + (b / c.lcm(d))) - (a - (a / c) - (a / d) + (a / c.lcm(d)))
if a % c != 0 && a % d != 0
  ans += 1
end
  
puts ans