n = gets.chomp.to_i
a = gets.split.map(&:to_i)
a.sort!{|a,b| b<=> a}
array = a.select{|e| a.index(e) != a.rindex(e)}.uniq
puts array.size > 0 ? array[0] * array[1] : 0