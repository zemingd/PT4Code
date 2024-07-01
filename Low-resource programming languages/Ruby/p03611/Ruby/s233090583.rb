n = gets.to_i
a = gets.split.map( &:to_i )

h = Hash.new( 0 )
n.times do |i|
  h[ a[ i ] - 1 ] += 1 if a[ i ] > 0
  h[ a[ i ] ] += 1
  h[ a[ i ] + 1 ] += 1
end

x = h.max{ |x, y| x[1] <=> y[1] }

p x[1]

