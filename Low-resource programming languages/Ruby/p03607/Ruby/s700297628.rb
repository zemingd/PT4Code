N=gets.chomp.to_i
a=N.times.map { gets.chomp.to_i }
b= a.uniq.map{|x| a.count(x)%2!=0 }
puts b.length