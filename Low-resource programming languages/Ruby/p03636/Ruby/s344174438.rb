s = gets.strip.to_s

p s[0] + s.slice(1..-2).length.to_s + s[-1]