s=gets.chomp.split(" ").sort.reverse

a = s[0..1].inject(:+).to_i
b = s[2].to_i

puts a+b