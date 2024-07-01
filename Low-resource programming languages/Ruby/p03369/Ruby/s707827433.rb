s = gets.chomp.split(//)

ans = 700
if s[0] == 'o'
  ans += 100
end
if s[1] == 'o'
  ans += 100
end
if s[2] == 'o'
  ans += 100
end

puts ans
