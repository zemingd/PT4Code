# abc159 B
s = gets.chomp.chars
s1 = s[0..(s.size/2 - 1)]
s2 = s[(s.size)..-1]
puts s == s.reverse && s1 == s1.reverse && s2 == s2.reverse ? 'Yes' : 'No'

