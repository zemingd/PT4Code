require 'prime'

n = gets.to_i
a = gets.chomp.split.map(&:to_i)

if n == 2
  puts a.max
  exit
end

cnt = Hash.new(0)
me = Hash.new
n.times do |i|
  Prime.prime_division(a[i]).each do |p, v|
    cnt[p] += 1
    me[p] ||= []
    me[p] << v
  end
end

res = 1
cnt.each do |k, v|
  if v >= n - 1
    res *= (k ** me[k].min)
  end
end
puts res