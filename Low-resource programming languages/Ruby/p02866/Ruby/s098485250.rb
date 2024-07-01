INF = 998244353

n = gets.to_i
d = gets.chomp.split.map(&:to_i)
d.sort!

hs = Hash.new(0)
d.each do |x|
  hs[x] += 1
end

res = 1
d[-1].times do |i|
  if hs[i] == 0
    res = 0
    break
  end

  hs[i + 1].times do |_|
    res *= hs[i]
    res %= INF
  end
end
puts (d[0] == 0 && d[1] != 0)? res : "0"