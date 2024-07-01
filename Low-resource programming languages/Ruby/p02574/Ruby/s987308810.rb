require 'prime'

n = gets.to_i
a = gets.chomp.split.map(&:to_i)
m = a.max
d = Hash.new

m.times do |i|
  p = i + 1
  next if !d[p].nil? || p == 1
  1.step(m / p) do |j|
    d[j * p] = p if d[j * p].nil?
  end
end

hs = Hash.new(0)
n.times do |i|
  x = a[i]
  while x > 1
    hs[d[x]] += 1
    x /= d[x]
  end
end

res = hs.values.max
if res == 1
  puts "pairwise coprime"
elsif res == n
  puts "not coprime"
else
  puts "setwise coprime"
end