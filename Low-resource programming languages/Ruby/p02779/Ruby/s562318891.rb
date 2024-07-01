require 'set'
as = gets.split(' ').map(&:to_i)
puts Set[*as].count == Set[*as] ? 'YES' : 'NO'