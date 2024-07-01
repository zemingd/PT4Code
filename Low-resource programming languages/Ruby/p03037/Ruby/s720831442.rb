n, m = gets.rstrip.split.map(&:to_i)
lrs = m.times.map{ gets.rstrip.split.map(&:to_i) }

# a = 1..6
# b = 4..10
# a.to_a & b.to_a #=> [4,5,6]

lr = lrs.shift
ans = (lr[0]..lr[1]).to_a
lrs.each do | lr |
  ans = ans & (lr[0]..lr[1]).to_a
end
p ans.size