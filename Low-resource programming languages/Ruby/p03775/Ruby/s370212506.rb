n = gets.to_i
ar = []
1.upto(Math.sqrt(n)) do |x|
  next if n % x != 0

  y = n / x
  ar << [x.to_s.length, y.to_s.length].max
end

puts ar.min