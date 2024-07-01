a , b = gets.split().map{|e| e.to_i}
print "#{a / b} #{a % b} #{(a / b.to_f)}"