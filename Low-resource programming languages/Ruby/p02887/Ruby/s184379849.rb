n = gets.to_i
s = gets.chomp
i = 0
loop do
  break if i == s.length - 1
  if s[i] == s[i+1]
    s[i+1] = ""
  else
    i += 1
  end
end
puts s.length