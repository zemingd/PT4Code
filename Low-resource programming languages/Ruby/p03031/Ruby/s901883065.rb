n, m = gets.split.map(&:to_i)
k = []
1.upto(m) do |i|
  h = gets.split.map(&:to_i)
  s = Array.new(n, 0)
  1.upto(h.size - 1) do |j|
    s[h[j] - 1] = 1
  end
  k[i] = s.join('')
end
p = gets.split.map(&:to_i)
ans = 0
1.upto(2**n - 1) do |i|
#  puts "s ".concat(i.to_s(2))
  f = 1
  1.upto(m) do |j|
#    puts "k ".concat(k[j])
    if (i & k[j].to_i).to_s(2).count("1") % 2 != p[j - 1]
      f = 0
      break;
    end
  end
  ans += f
end
puts ans