a, b, c, d = gets.split.map(&:to_i)
a -= 1
cdlcm = c.lcm(d)

a_count = a - a/c - a/d + a/cdlcm
b_count = b - b/c - b/d +b/cdlcm

puts b_count - a_count