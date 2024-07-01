s = gets.chomp
t = gets.chomp

done = []
s.size.times do |i|
  next if done.include?(t[i])
  origin = s[i]
  s.gsub!(t[i], "!")
  s.gsub!(origin, t[i])
  s.gsub!("!", origin)
  done << t[i]
end
puts s==t ? "Yes" : "No"