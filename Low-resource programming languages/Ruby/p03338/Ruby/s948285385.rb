n = gets.to_i
s = gets.chomp

ans = 0

(n - 1).times do |i|
  l = s.chars[0..i]
  r = s.chars[i + 1..-1]
  i = (l & r).uniq

  ans = i.size if i.size >= ans
end

puts ans
