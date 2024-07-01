s=gets.chomp
50.times do
  s = s[2,s.size] if s[0,2] == 'hi'
end

puts s.size == 0 ? "Yes" : "No"