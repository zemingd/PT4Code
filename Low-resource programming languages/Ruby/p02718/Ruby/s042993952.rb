x,y=gets.split.map!(&:to_f)
s=gets.split.map!(&:to_i)
s=s.sort.reverse
max=s.sum
if s[y-1]>=(max/(4*y))
  puts "Yes"
else
  puts "No"
end
