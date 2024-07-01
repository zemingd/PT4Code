input = gets.split
h = input[0].to_i
a = input[1].to_i

if h < a
  print 1
elsif h%a != 0
  print (h/a)+1
else
  print h/a
end