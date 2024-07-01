S = gets.chomp

stack = []
ans = 0
S.chars.each do |s|
  if s == '0'
    if stack.last == '1'
      stack.pop
      ans += 2
    else
      stack << s
    end
  else
    if stack.last == '0'
      stack.pop
      ans += 2
    else
      stack << s
    end
  end
end

p ans
