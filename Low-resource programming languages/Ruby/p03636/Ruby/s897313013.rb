s = gets.chomp.split('')
puts s[0] + s[1...-1].size.to_s + s[-1]
