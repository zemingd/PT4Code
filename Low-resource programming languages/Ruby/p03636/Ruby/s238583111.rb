s = gets.chomp

puts s[0] + s[1..-2].length.to_s + s[-1]