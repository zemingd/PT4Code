n, m = gets.split.map(&:to_i)
a = []
m.times do
  an = gets.to_i
  a[an] = true
end

b = []
b[0] = 1
b[1] = 1 unless a[1]

(2..n).each do |i|
  b[i] = b[i-2].to_i + b[i-1].to_i unless a[i]
end

puts b[n] % 1_000_000_007

