a,b,c = gets.chomp.split.map(&:to_i)
ans = c-(a-b) 
puts ans < 0 ? 0:ans