s = gets.chomp.split("")
ans = "Good"
3.times do |i|
   ans = "Bad" if s[i] == s[i+1]
end
puts ans