s = gets
puts s[0] + s.slice(1..-2).size.to_s + s[-1]