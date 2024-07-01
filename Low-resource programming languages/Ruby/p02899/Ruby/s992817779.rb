n=gets.chomp.to_i
a=gets.split.map(&:to_i)
puts a.each.with_index(1).sort.map{|v,i|i}.join(" ")
