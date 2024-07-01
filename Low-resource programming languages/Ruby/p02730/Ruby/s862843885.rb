def kaibun(s)
  size = s.length / 2
  s[0..size] == s.reverse[0..size]
end
s = gets.chomp.chars
n = s.length
sl = s[0..(n-1)/2-1]
sr = s[(n+3)/2-1..n-1]
puts (kaibun(sl) && (sl==sr)) ? "Yes" : "No"
