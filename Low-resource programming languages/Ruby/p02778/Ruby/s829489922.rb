s = gets.to_s
a = s.size-1
(0..a-1).each do |e|
  s[e] = "x"
end
puts s
