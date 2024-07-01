a, b, c, d = gets.split.map(&:to_i)
n = (b-a)+1
lcm = c.lcm(d)
cc = b/c - (a-1)/c
dc = b/d - (a-1)/d
cdc = b/(lcm) - (a-1)/(lcm)

puts n - (cc + dc - cdc)