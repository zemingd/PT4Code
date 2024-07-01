a, b, c = gets.split.map(&:to_i)
ans = c-(a-b)
puts ans>=0 ? ans : 0