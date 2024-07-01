s = gets.chomp
t = s.reverse

sl = s.length

st = s.index(?A)
gl = t.index(?Z)

puts sl - ( st + gl )

