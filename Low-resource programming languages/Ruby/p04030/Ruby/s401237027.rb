s = gets.chomp

ans = ""
s.each_char do |c|
  ans += ?0 if c == ?0
  ans += ?1 if c == ?1
  ans.chop! if c == ?B
end

puts ans