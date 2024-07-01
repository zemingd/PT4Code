N = gets.to_i
As = gets.split.map(&:to_i)

require 'prime'

as = As.uniq
ul = 10**6
ps = Prime.each(ul)
h = as.tally
s = ps.map{|p| p.step(ul, p).count{h[_1]}}.max || 0
puts (s <= 1 ? 'pairwise' : s == as.size ? 'not' : 'setwise') + ' coprime'