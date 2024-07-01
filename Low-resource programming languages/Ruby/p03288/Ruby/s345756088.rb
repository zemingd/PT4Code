rate = gets.to_i
case rate
  when (0..1199)
  puts "ABC"
  exit
  when (1200..2799)
  puts "ARC"
  exit
  else
  puts "AGC"
  exit
end