require 'complex'

ab = gets.chomp

split_ab = ab.split(" ")

caoncat_ab = ab.delete(" ")

ab = caoncat_ab.to_i

sqrt_ab = Math.sqrt(ab)

if (sqrt_ab.to_s =~ /^[0-9]+.0$/)
  print("Yes\n")
else
  print("No\n")
end