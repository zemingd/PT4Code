def security(s)
  return 'Good' if s.size <= 1
  prev = s[0]
  1.upto(s.size - 1) do |i|
    return 'Bad' if prev == s[i]
    prev = s[i]
  end
  'Good'
end

puts security(gets.chomp)