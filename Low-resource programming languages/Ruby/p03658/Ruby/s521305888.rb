n,k = gets.split.map(&:to_i)
l = gets.split.map(&:to_i)
l.sort!{|a, b| b <=> a }
puts l[0,k].inject(:+)
