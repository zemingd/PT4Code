n, m = $stdin.readline.chomp.split.map(&:to_i)
a = $stdin.readline.chomp.split.map(&:to_i)
q = []
h = Hash.new(0)

a.each do |i|
  cnt = 0
  while i & 1 == 0
    i >>= 1
    cnt += 1
  end
  h[cnt] += 1
  q << i
end

if h.keys.size > 1
  puts "0"
else
  l = q.inject(&:lcm) * (1 << (h.keys.first - 1))
  puts (m + l) / (2 * l)
end