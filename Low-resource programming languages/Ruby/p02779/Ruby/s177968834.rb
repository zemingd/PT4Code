require 'set'
_N = gets.chomp
as = gets.split(' ').map(&:to_i)
puts Set[*as].count == as.count ? 'YES' : 'NO'