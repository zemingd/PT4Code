N = gets.to_i
As = gets.split.map(&:to_i)

require 'prime'

sw = As.inject(&:gcd) == 1
pw = As.each_with_object(Hash.new(0)){|a, h| a.prime_division.each{|p, _| h[p] += 1 }}.values.all?{_1 < 2}
puts (pw ? 'pairwise' : sw ? 'setwise' : 'not') + ' coprime'