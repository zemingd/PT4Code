a, b, c, d = gets.chomp.split.map(&:to_i)
a -= 1

cc = b/c - a/c
dd = b/d - a/d

cd = c.lcm(d)
cdcd = b/cd - a/cd

p b - a - cc - dd + cdcd
