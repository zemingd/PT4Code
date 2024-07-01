require 'set'

wrong = (1..2).map { gets.chomp.to_i }
puts (Set.new([1,2,3]) - Set.new(wrong)).first