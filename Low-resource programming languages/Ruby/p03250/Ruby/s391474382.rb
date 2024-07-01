s=gets.chomp.split(" ")

a = s[0].to_i
bc = s[1..2].inject(:+).to_i

x = a+bc

ab = s[0..1].inject(:).to_i
c = s[2].to_i

y = ab + c

puts x > y ? x : y
