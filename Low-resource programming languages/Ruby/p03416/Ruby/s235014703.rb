a, b = gets.split.map &:to_i
puts [*a..b].count{|a| a.to_s == a.to_s.reverse}