s = gets.chomp
t = gets.chomp

done = []
s.length.times do |i|
  next if done.include?(s[i])
  temp = s[i]
  s.gsub!(s[i], "*")
  s.gsub!(t[i], temp)
  s.gsub!("*", t[i])
  done << t[i]
end

puts s == t ? "Yes" : "No"
