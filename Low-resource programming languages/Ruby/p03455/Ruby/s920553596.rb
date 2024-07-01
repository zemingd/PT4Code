require 'complex'

ab = gets.chomp

split_ab = ab.split(" ")

a = split_ab[0].to_i
b = split_ab[1].to_i

caoncat_ab = ab.delete(" ")

ab = caoncat_ab.to_i

sqrt_ab = Math.sqrt(ab)

if (sqrt_ab.to_s =~ /^[0-9]+.0$/)
  print("Yes\n")
else
  print("No\n")
end