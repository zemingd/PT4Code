s = gets.chomp
switch = false
c = (s.size)/2
if s == s.reverse &&
    s.slice(0,c)   == s.slice(0,c).reverse &&
    s.slice(c+1,c) == s.slice(c+1,c).reverse
  switch = true
end

if switch
  puts "Yes"
else
  puts "No"
end