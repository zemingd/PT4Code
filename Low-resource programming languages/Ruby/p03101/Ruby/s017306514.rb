str1 = gets.split
A,B = str1[0].to_i, str1[1].to_i
str2 = gets.split
C,D = str2[0].to_i, str2[1].to_i

answer = (A-C) * (B-D)

puts answer