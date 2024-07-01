n, *b = $stdin.readline.chomp.split.map(&:to_i)
b.unshift(0)
l = Array.new(n) { $stdin.readline.to_i }

res = 10 ** 4
(1 << (2 * n)).times do |bit|
  d = Array.new(4, 0)
  cnt = Array.new(4, 0)
  n.times do |i|
    d[(bit >> (2 * i)) & 3] += l[i]
    cnt[(bit >> (2 * i)) & 3] += 1
  end
  
  next if cnt[1..3].any? {|x| x == 0 }
  mp = (1..3).to_a.inject(0) {|acc, j| acc + 10 * (cnt[j] - 1) + (b[j] - d[j]).abs }
  res = [res, mp].min
end
puts res