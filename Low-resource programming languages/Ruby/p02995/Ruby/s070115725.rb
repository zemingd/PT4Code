a,b,c,d = gets.split.map(&:to_i)
a -= 1
ans = b-a
ans += -(b/c)+a/c
ans += -(b/d)+a/d
e = c.lcm(d)
ans += b/e-(a/e)
puts ans