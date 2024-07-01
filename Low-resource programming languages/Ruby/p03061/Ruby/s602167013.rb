N = gets.to_i
a = []
a = gets.split.map(&:to_i)

# aiより左の全ての数のgcdを求める
def lgcd(i, a)
  if i == 0
    return 0
  end
  return lgcd(i-1, a).gcd(a[i-1])
end

# aiより右の全ての数のgcdを求める
def rgcd(i, a)
  if i == N-1
    return 0
  end
  return rgcd(i+1, a).gcd(a[i+1])
end

m = 0
g,l,r = 0
N.times do |i|
  l = lgcd(i, a)
  r = rgcd(i, a)
  g = l.gcd(r)
  m = [g, m].max
end

puts m