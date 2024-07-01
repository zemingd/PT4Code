a = gets.split("")
3.times do |i|
if a[i]=='1'
  a[i]='9'
else
  a[i]='1'
end
end
puts a.join("")
