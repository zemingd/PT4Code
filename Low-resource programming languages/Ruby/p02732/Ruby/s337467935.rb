require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

h = Hash.new(0)
a.each do |num|
  h[num] += 1
end

ans = 0
h.keys.each do |k|
  v = h[k]
  ans += v * (v-1) / 2
end

# p ['ans', ans]
a.each do |num|
  v = h[num]
  diff = v * (v-1) / 2 - (v-1) * (v-2) / 2
  puts ans - diff
end
