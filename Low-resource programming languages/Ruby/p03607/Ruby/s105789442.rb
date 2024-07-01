N=gets.chomp.to_i
a=N.times.map { gets.chomp.to_i }
puts a.uniq.select{|x| a.count(x)%2!=0 }.length
