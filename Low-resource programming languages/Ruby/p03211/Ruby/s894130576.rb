s = gets.chomp

ans = 10**9
(s.length - 2).times do |i|
  num = (753 - s[i..i+2].to_i).abs
  ans = num if num < ans
end

puts ans