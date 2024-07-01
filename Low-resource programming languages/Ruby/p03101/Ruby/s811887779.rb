hb, wb = gets.split(" ").map(&:to_i)
h,w = gets.split(" ").map(&:to_i)
puts hb * wb - ((w * hb) + (wb - w)*h)