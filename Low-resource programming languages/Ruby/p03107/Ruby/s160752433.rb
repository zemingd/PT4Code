s = gets.chomp
ans = 0
stack = []
s.chars.each_with_index do |e, i|
  if stack.empty?
    stack.push e
  elsif stack[-1] != e
    stack.pop
    ans += 2
  else
    stack.push e
  end
end
puts ans
