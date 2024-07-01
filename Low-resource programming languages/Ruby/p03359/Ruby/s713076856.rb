m = gets.split.map(&:to_i)
k = gets.to_i
puts  m.sum + (m.max)*(2**k)-m.max