(a,b,c)=gets.split.map(&:to_i)
if c == a 
  puts "Yes"
elsif a<c && (a+b)>=c
  puts "Yes"
else
  puts "NO"
end
