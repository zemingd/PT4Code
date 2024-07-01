input = gets.chomp.split(" ").map(&:to_i)
if input[0]>12 then
  print input[1]
elsif input[0]>5 then
  print input[1]/2
else
  print 0
end