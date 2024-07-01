H, W = gets.chomp.split(" ")
h, w = gets.chomp.split(" ")

puts H.to_i * W.to_i - h.to_i * W.to_i - H.to_i * w.to_i + h.to_i * w.to_i
