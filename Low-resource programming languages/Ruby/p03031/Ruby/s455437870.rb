n, m = gets.split.map(&:to_i)
k = []
1.upto(m) do |i|
  s = "0" * n
  h = gets.split.map(&:to_i)
  h.shift
  h.each do |j|
    s[j - 1] = "1"
  end
  k[i] = s.to_i(2)
end
p = gets.split.map(&:to_i)
ans = 0
0.upto(2**n - 1) do |i|
  f = 1
  1.upto(m) do |j|
    if (i & k[j]).to_s(2).count("1") % 2 != p[j - 1]
      f = 0
      break;
    end
  end
  ans += f
end
puts ans