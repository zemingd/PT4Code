ans = 0
gets.chomp.chars.map do |s|
  ans += 1 if s == '+'
  ans -= 1 if s == '-'
end

p ans
