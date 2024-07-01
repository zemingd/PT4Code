lines = readlines.join.split.map(&:to_i)
a = lines.shift
b = lines.shift
c = lines.shift
k = lines.shift
xa = [a,k].min
k -= xa
xb = [b,k].min
k -= xb
xc = [c,k].min


ans = (xa*1)+(xc*-1)
p ans