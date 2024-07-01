s = gets

ans = 'Good'
(s.length-1).times do |i|
  if s[i] == s[i+1]
    ans = 'Bad'
    break
  end
end

puts ans