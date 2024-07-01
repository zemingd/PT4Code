s = gets.split("")
s.each_with_index do |a,i|
  s[i] = "x"
  i += 1
end
puts s.inject(:+)