c = gets.chomp
ans = 'consonant'
['a','i','u','e','o'].each do |s|
  ans = 'vowel' if s.to_s == c.to_s
end
puts ans