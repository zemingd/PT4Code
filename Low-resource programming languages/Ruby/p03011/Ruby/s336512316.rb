c = gets.split.map{|e| e.to_i}
puts c.inject{|r,v| r + v} - c.max