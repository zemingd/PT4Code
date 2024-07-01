s = gets.strip

one = s.scan(/1/).size
zero = s.scan(/0/).size

if one == 0 || zero == 0
  puts 0
elsif one > zero
  puts zero * 2
else
  puts one * 2
end
