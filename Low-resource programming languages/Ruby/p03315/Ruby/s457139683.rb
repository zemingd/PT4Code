s = gets.chomp.split(//)

ans = 0
s.each do |c|
  ans += 1 if c == '+'
  ans -= 1 if c == '-'
end

puts ans
