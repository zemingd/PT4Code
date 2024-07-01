s = gets.chomp
x = 0
s.each_char do |one|
  x += one.to_i
end
n = s.to_i
ans = n % x
if ans == 0
  print "Yes\n"
else
  print "No\n"
end