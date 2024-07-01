io = STDIN
str=io.gets.chomp
ar=%w(SUN MON TUE WED THU FRI SAT)
ix=ar.index(str)
if ix==0
  puts 7
else
  puts 7-ix
end
