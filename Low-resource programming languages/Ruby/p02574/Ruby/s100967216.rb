N = gets.to_i
As = gets.split.map(&:to_i)

require 'prime'

as = As.uniq
n = as.size
ul = as.max
h = as.tally
s = Prime.each(ul).map{|p| p.step(ul, p).count{h[_1]}}.max
puts (s == 1 ? 'pairwise' : s == N ? 'not' : 'setwise') + ' coprime'