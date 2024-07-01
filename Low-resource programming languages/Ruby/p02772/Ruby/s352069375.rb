a = gets.to_i
b = gets.strip.split(" ").map{|e|e.to_i}

b.each do |e|
  if e%2==0 and !(e%5==0 or e%3==0)
    print "DENIED"
    exit
  end
end
print "APPROVED"