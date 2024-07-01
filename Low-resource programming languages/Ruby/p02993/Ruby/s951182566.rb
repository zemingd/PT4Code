bad = false
s = gets.chomp
3.times do |i|
  bad = true if s[i] == s[i+1]
end
puts bad ? 'Bad' : 'Good'
