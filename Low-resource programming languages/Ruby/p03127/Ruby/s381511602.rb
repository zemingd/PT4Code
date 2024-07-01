require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

a.uniq!
m = a.min
while a.size > 1
  m = a.min
  a.size.times do |i|
    a[i] %= m #=
  end
  a.uniq!
  a.delete(0)
  a.push(m)
  # p a
end

puts m