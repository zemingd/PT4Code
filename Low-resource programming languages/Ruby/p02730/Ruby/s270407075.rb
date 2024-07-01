a=gets.chomp.chars
def r(s)
  s.reverse==s
end
if r(a) && r(a[0,(a.size-1)/2]) && r(a[(a.size+3)/2-1,a.size])
  puts 'Yes'
else
  puts "No"
end