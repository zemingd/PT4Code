s = gets.chomp.split("")
for i in 0..(s.length-1)
  if s[i] == "1"
    s[i] = "9"
  elsif s[i] == "9"
    s[i] = "1"
  end
end
puts s.join