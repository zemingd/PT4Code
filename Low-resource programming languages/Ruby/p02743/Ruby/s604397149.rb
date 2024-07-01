a,b,c = gets.split.map(&:to_i)
f = a + b + 2 * ((a*b)**0.5)
g = c
puts (f - g).abs <  Float::EPSILON * [f.abs, g.abs].max  ?  "Yes" : "No"