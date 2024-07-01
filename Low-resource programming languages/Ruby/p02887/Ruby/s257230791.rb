_n = gets.to_i
s = gets.strip
puts s.gsub(/(.)\1*/){|x| "#{x} "}.split.size