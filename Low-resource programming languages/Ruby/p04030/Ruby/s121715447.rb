s = gets.chomp

ans = ''
s.chars do |c|
  if c == 'B'
    ans = ans[0..-2] unless ans.empty?
  else
    ans += c
  end
end
puts ans
