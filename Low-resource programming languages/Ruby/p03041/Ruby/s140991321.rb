n, k = gets.split.to_i
s = gets.chomp.split("")
if s[k+1] == "A"
  s[k+1] = "a"
elsif s[k+1] == "B"
  s[k+1] = "b"
elsif s[k+1] == "C"
  s[k+1] = "c"
end
puts s.join