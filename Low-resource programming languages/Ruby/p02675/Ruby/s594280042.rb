n = gets.to_i

ld = n.digits.first
if ld == 3
  puts "bon"
elsif (ld == 0 or ld == 1 or ld == 6 or ld == 8)
  puts "pon"
else
  puts "hon"
end