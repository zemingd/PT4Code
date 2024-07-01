require 'prime'

n = gets.to_i
a = gets.chomp.split.map(&:to_i)

if n == 2
  puts a.max
  exit
end

l = 1
n.times do |i|
  l = l.lcm(a[i])
end

res = 1
Prime.prime_division(l).each do |p, v|
  if v >= n - 1
    res *= p ** (v - n + 2)
  end
end
puts res