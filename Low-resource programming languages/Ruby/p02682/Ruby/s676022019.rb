a,b,c,k=gets.split(' ').map(&:to_i)
if k<=a
  puts k
elsif k>a and k<=b
  puts a
else
  puts -k+2*a+b
end