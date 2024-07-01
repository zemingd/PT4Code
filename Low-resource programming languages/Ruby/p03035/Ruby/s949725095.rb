age, price = gets.chomp.split(' ').map(&:to_i)

if age <= 5 then
  print "0"
elsif 6 <= age and age <= 12 then
  ans = price / 2
  print "#{ans}"
else
  print "#{price}"
end