n = gets.to_i
s = gets.to_s
s.gsub!("#.", "*")
puts s.count("*")