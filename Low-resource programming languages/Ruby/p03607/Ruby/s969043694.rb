n = gets.to_i
h = Hash.new(false)
n.times{h[gets.to_i] ^= true}

puts h.count{|k,v| v == true}