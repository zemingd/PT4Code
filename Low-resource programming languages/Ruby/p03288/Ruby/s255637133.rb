R = gets.chomp.to_i

if R < 1200
  puts("ABC")
elsif 1200 <= R && R < 2800
  puts("ARC")
else
  puts("AGC")
end

