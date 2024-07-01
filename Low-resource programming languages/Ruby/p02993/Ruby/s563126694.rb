s = gets.chomp

p = ''
s.split("").each do |i|
  if p == i
    print "Bad\n"
    exit
  end
  p = i
end
print "Good\n"