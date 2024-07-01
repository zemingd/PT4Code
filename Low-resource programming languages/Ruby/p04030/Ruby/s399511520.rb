s = gets.chomp

ans = ''
s.chars do |c|
  if c == 'B'
    ans = ans[0..-2] if ans.size > 0
  else
    ans += c
  end
end
puts ans
