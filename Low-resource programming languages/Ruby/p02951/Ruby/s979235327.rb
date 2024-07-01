a,b,c = gets.split.map(&:to_i)
puts a-b<c ? c-(a-b) : 0 