n = gets.to_i
p = (1..n).to_a
p.push( p.shift )

mi = 0
(0...n).each do |i|
  mi += (i+1) % p[ i ]
end

p mi
