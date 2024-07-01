a, b, c, d = gets.split.map(&:to_i)
e = c.lcm(d)
aa = a - 1

bc = b / c
bd = b / d
be = b / e
bs = bc + bd - be
ans = b - bs

aac = aa / c
aad = aa / d
aae = aa / e
aas = aac + aad - aae
aaa = aa - aas

puts ans - aaa
