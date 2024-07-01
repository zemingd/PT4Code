r = ['NA', 'YYMM', 'MMYY', 'AMBIGUOUS']
s = STDIN.gets

p = 0
p += (1..12 === s[0..1].to_i)?1:0
p += (1..12 === s[2..3].to_i)?2:0

puts r[p]
