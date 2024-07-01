n = gets.to_
ar = []
1.upto(sqrt(n)) do |x|
  next n % x != 0

  y = n / x
  ar << [x.to_s.length, y.to_s.length].max
end

puts ar.min