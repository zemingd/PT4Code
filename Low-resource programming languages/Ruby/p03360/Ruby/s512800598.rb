m = gets.split.map(&:to_i)
k = gets.to_i
puts  m.inject(0){|result,n|result+n} + (m.max)*(2**k)-m.max
