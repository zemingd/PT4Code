gets
l=gets.split(&:to_i)
puts l.select{|n|n>l.index n}.length