s = gets.chomp
b=0
w=0
s.size.times do |i|
  b += 1 if i.even? and s[i] == "0"
  b += 1 if i.odd? and s[i] == "1"
  w += 1 if i.even? and s[i] == "1"
  w += 1 if i.odd? and s[i] == "0"
end
p [b, w].min
