def chmin(a, b) a < b ? a : b end

def fin(x) 
  puts x 
  exit
end

L, R = gets.strip.split.map(&:to_i)

res = 3000
for i in L..(R - 1)
  for j in (i + 1)..R
    res = chmin((i * j) % 2019, res)
  end
  fin(0) if res.zero?
end

puts res
