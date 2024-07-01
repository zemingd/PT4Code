n = gets.to_i
s = gets.chomp.chars

ans = 0
(1..n-2).each do |i|
  cnt = 0
  ('a'..'z').to_a.each do |str|
    cnt += 1 if s[0..i].include?(str) && s[(i+1)..(n-1)].include?(str)
  end
  ans = cnt if cnt > ans
end

puts ans