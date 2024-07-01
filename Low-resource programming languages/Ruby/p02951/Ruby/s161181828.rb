a,b,c = gets.split(" ").map(&:to_i)
puts c-(a-b) < 0 ? 0 : c-(a-b)