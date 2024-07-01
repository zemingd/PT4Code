n = gets.to_i
s = gets.chomp

ans = 0

(n - 1).times do |i|
  l = s.chars[0..i + 1]
  r = s.chars[i + 1...n]
  i = l & r

  ans = i.size if i.size >= ans
end

puts ans
