n = gets.to_i
s = gets.strip
puts s[0...n/2] == s[n/2..-1] ? 'Yes' : 'No'