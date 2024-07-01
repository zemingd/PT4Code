gets
t = readlines.map{|a|a.chomp}
e = t[0][0]
if(t.uniq.size != t.size)
  puts "No"
  exit
end
t.each do |a|
  if(a[0] != e)
    puts "No"
    exit
  else
    e = a[-1] 
  end
end
puts "Yes"
exit