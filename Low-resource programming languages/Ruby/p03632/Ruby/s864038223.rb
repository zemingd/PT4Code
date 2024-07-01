a,b,c,d = gets.split(' ').map{|x|x.to_i}
inter = ((0..75).to_a & (25..100).to_a)
puts (inter.max - inter.min)
