N = gets.to_i
As = gets.split.map(&:to_i)

require 'prime'

as = As.uniq
ul = as.max
ps = Prime.each(ul)
h = as.tally
pw = ps.all?{|p| p.step(ul, p).count{h[_1]} <= 1}
sw = as.inject(&:gcd) == 1
puts (pw ? 'pairwise' : sw ? 'setwise' : 'not') + ' coprime'