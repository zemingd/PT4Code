require 'set'; require 'prime'; require 'pp'
INF=Float::INFINITY; MOD=10**9+7
n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
q = gets.chomp.to_i

h = Hash.new(0)
a.each do |num|
  h[num] += 1
end

sum = h.map{|k,v| k*v}.sum
q.times do
  b, c = gets.chomp.split.map(&:to_i)
  h[c] += h[b]
  sum = sum - b * h[b] + c * h[b]
  h.delete b
  puts sum
end
