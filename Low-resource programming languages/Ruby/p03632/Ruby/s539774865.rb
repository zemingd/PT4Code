a,b,c,d = gets.split(' ').map{|x|x.to_i}
inter = ((a..b).to_a & (c..d).to_a)
puts (inter.max - inter.min)