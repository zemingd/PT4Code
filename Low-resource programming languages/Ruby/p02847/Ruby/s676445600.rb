s = gets.chomp
ans = 0
case s
when "SUN" then
  ans = 7
when "MON" then
  ans = 6
when "TUE" then
  ans = 5
when "WED" then
  ans = 4
when "THU" then
  ans = 3
when "FRI" then
  ans = 2
when "SAT" then
  ans = 1
end
puts "#{ans}"
