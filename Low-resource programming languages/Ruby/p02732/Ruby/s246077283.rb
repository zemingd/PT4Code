N = gets.chomp.to_i
cnt = Hash.new(0)
require "set"
mula = Set.new
A = []
gets.chomp.split(" ").each do |aa|
  a = aa.to_i
  A << a
  cnt[a] += 1
  mula << a if cnt[a] > 1
end

combi = {}
t = 0
cnt.each do |a, c|
  combi[c] ||= c * (c-1) / 2
  t += combi[c]
end

ans = Hash.new(0)

A.each do |a|
  c = cnt[a]
  c0 = combi[c]
  c1 = (combi[c-1] ||= (c-1) * (c-2) / 2)
  puts t - (c0 - c1)
end
