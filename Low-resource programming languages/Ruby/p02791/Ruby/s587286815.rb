gets
l=gets.split.map(&:to_i)
puts l.select{|n| n > l.index n}.length