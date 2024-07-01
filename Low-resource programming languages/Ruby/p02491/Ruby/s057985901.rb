a , b = gets.split().map{|e| e.to_i}
print "#{a / b} #{a % b} #{(a.to_f / b.to_f)}"