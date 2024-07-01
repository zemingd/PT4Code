gets

a = gets.chomp.split.map(&:to_i)

amap = Hash.new(0)

def binom_3(n, r)
  return 1 if r == 0 || r == n
  return n * binom_3(n - 1, r - 1) / r
end

a.each do |i|
  amap[i] += 1
end

mem = {}

a.each_with_index do |x, index|
  n = 0
  thismem = true
  amap.each do |k, v|
    if k == x
      nc = v - 1
      thismem = false
    else
      nc = v
    end
    next if nc < 2
    if mem[nc]
      n += mem[nc]
    else
      nb = binom_3(nc,2)
      n += nb
      mem[nc] = nb if thismem
    end
  end
  puts n
end