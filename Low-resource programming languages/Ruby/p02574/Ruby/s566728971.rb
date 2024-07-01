N = gets.to_i
As = gets.split.map(&:to_i)

require 'prime'

ul = As.max
ps = Prime.each(ul).to_a
h = As.tally; h.default = 0
s = ps.map{|p| p.step(ul, p).inject(0){|r, q| r + h[q]}}.max || 0
puts (s <= 1 ? 'pairwise' : s == N ? 'not' : 'setwise') + ' coprime'
