(a,b,c)=gets.split.map(&:to_i)
if c == a
  puts "YES"
elsif a<=c && (a+b)>=c
  puts "YES"
else
  puts "NO"
end
