N, K = gets.chomp.split(" ").map(&:to_i)
p = gets.chomp.split(" ").map(&:to_i)

sums = {}

(p.length - K + 1).times do |i|
  m = p[i..(i+K-1)]

  sum =  m.inject(:+)

  sums.store(sum, m)
end

sum = sums.max

res = 0

sum[1].each do |v|
  r = (1..v).to_a
  sum = r.inject(:+)
  e = sum / v.to_f
  res += e
end

puts(sprintf("%.12f", res))