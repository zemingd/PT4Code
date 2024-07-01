s = gets.chomp
len = s.length
x = (len -1 )/2
y = (len + 3)/2
a = s.slice(0,x)
b = s.slice(y-1,len)
if s == s.reverse
  if a == a.reverse && b == b.reverse
    puts "Yes"
  else
    puts "No"
  end
else
  puts"No"
end
  