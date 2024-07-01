n = $stdin.readline.to_i
a = $stdin.readline.chomp.split.map(&:to_i)
m = 10 ** 6
d = Array.new(m + 1)

2.step(m) do |i|
  next if !d[i].nil?
  
  d[i] = i
  (m / i).times do |j|
    k = (j + 1) * i
    next if !d[k].nil?
    d[k] = i
  end
end

g = a[0]
pc = true
h = Hash.new(false)
n.times do |i|
  g = g.gcd(a[i])
  x = a[i]
  q = []
  while pc && x > 1
    if h[d[x]]
      pc = false
      break
    end

    q << d[x]
    x /= d[x]
  end

  q.uniq.each do |y|
    h[y] = true
  end
end

if pc
  puts "pairwise coprime"
elsif g == 1
  puts "setwise coprime"
else
  puts "not coprime"
end