n = gets.to_i
ts = [].tap { |array| n.times { array << gets.to_i } }
 
result = ts.max
ts.each { |t| result = result.lcm(t) unless (result % t).zero? }
puts result