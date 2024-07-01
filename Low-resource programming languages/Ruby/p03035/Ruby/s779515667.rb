str1 = gets.split
A,B = str1[0].to_i, str1[1].to_i

if A >= 13
  puts B
elsif A >= 6
  puts B/2
else
  puts 0
end