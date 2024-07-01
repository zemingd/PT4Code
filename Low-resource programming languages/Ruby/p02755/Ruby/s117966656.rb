a, b = gets.split.map(&:to_i)

at = 0.08
bt = 0.10

ai = a / at
bi = b / bt
ati = (a / at) * at
bti = (b / bt) * bt

if ai == bi
  puts ai.to_i
else
  puts ati == bti ? [ai, bi].max.to_i : -1
end