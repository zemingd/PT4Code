def lscan;gets.split.map(&:to_i);end

a,b,c,d = lscan
cd = c.lcm(d)

b += 1
total = b - a
a -= 1
b -= 1
total -= b/c - a/c
total -= b/d - a/d
total += b/cd - a/cd
p total