a,b,c,d=gets.split.map(&:to_i)
r = 1
r *= 2 if a/2 == c
r *= 2 if b/2 == d
puts "#{(a*b)/2} #{d}" 