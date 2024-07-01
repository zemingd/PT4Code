a,b,c,d=gets.split.map(&:to_i)
r = 0
r *= 1 if a/2 == c
r *= 1 if b/2 == d
puts "#{(a*b)/2} #{d}" 
