a, b, c = gets.split.map(&:to_i)

if a > b

 t = a

 a = b

 b = t

end

if a > c

 t = a

 a = c

 c = t

end

if b > c

 t = b

 b = c

 c = t

end

print a

print " "

print b

print " "

puts c