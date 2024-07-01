A,B = gets.split.map(&:to_i)
puts (A .. B).count{|i| i.to_s == i.to_s.reverse }


