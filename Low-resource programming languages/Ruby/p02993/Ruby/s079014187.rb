s = gets.strip
ans = 'Good'
s.chars.each_cons(2) do |a, b|
  ans = 'Bad' if a == b
end

puts ans