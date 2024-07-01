w, h, x, y = gets().chomp.split("\s").map{|x| x.to_i}

half = (w * h).to_f / 2.0
pat = x * 2 == w && y * 2 == h ? 1 : 0

puts "#{half}\s#{pat}"
