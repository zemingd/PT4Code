a,b = gets.split(" ").map(&:to_i)

if b%a==0
  print a+b
else
  print b-a
end