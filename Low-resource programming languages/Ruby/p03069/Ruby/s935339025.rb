n = gets.to_i
s = gets.strip
puts s.scan(/#\.+/).map{|x| x.size - 1 }.inject(&:+)