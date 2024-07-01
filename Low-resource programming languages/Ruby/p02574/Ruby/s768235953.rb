N = gets.to_i
As = gets.split.map(&:to_i)

require 'prime'

as = As.uniq
ul = as.max
ps = Prime.each(ul)
h = As.tally
s = ps.map{|p| p.step(ul, p).count{h[_1]}}.max || 0
puts (s <= 1 ? 'pairwise' : s == N ? 'not' : 'setwise') + ' coprime'