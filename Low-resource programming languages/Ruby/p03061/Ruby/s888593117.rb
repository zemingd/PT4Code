N = gets .to_i
As = gets.split.map(&:to_i)

require 'prime'

ls = As.take(N - 1).each_with_object([0]){|a, x| x << x.last.gcd(a)}
rs = As.drop(1).reverse.each_with_object([0]){|a, x| x << x.last.gcd(a)}.reverse
puts ls.zip(rs).map{|l, r| l.gcd(r)}.max