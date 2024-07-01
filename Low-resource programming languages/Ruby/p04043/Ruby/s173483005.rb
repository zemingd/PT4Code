a,b,c= gets.split.map(&:to_i)
p a,b,c
if (a == 5 && b == 5 && c==7) || (b == 5 && c == 5 && a==7) || (c == 5 && a == 5 && b==7) 
  puts "YES"
else
  puts "NO"
end