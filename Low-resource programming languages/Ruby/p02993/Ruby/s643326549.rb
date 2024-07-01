s = gets.chomp
ans = 'Good'
(0..s.size-2).each do |i|
  if s[i] == s[i+1]
    ans = 'Bad'
  end
end
puts ans