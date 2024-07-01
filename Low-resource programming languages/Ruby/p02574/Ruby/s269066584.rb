N = gets.to_i
As = gets.split.map(&:to_i)

require 'prime'

ds = Prime.each(As.max).map{|p| As.count{_1 % p == 0}}
puts (ds.all?{_1 < 2} ? 'pairwise' : (ds.all?{_1 < 3} ? 'setwise' : 'not')) + ' coprime'