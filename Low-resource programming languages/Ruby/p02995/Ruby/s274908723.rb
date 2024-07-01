a, b, c, d = gets.split(" ").map(&:to_i)

g = c.gcd(d)
#print("g=#{g}\n")
bl = b / ((c * d) / g)
al = (a-1) / ((c * d) / g)
#print("bl=#{bl}, al=#{al}\n")
bx = b / c

by = b / d

#x, yの具体的な要素のうち重複するものの個数=i
i = b - bx - by + bl
ax = (a-1) / c

ay = (a-1) / d

j = a-1 - ax - ay + al
#print("i=#{i}, j=#{j}\n")

p i - j