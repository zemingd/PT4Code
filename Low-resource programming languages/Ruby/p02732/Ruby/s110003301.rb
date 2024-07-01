gets

a = gets.chomp.split.map(&:to_i)

amap = Hash.new(0)

def binom_4(n, r)
  return 1 if r == 0 || r == n
  return (1..r).inject(1) { |s, i| s * (n - i + 1) / i }
end

a.each do |i|
  amap[i] += 1
end

a.each_with_index do |x, index|
  n = 0
  amap.each do |k, v|
    nc = k == x ? v - 1 : v
    next if nc < 2
    n += binom_4(nc,2)
  end
  puts n
end