H, W = gets.split.map{|i|i.to_i}
puts W * (H / 2) + (H.odd? ? ((W + 1) / 2) : 0)
