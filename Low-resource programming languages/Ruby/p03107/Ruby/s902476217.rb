a = gets.split(//)
x = a.select{|a|a=='1'}.size
puts (a.size - 2 * x).abs