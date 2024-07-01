require 'prime'
p (1..gets.to_i).select{|i| i.odd? && i.prime_division.map{|a|a[1]+1}.inject(&:*) == 8 }.count
