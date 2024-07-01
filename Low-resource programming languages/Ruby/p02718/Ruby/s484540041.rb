x,y=gets.split.map!(&:to_i)
s=gets.split.map!(&:to_i)
s.sort!
max=s.max
if s[y-1]>=(max/4/y)
  puts "Yes"
else
  puts "No"
end
