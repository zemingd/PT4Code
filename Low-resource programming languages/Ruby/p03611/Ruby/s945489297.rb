gets
table = Hash.new(0)
gets.split.map(&:to_i).map{|p| [p-1,p,p+1]}.flatten.each{|p| table[p] += 1}
puts table.values.max