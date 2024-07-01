a,b,c = gets.chomp.split(" ").map{|x| x.to_i}
count = 0
for i in a..b
  if c%i == 0
    count += 1
  end
end
print "#{count}\n"
