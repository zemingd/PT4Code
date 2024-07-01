s = gets.chomp.chars

stack = []

ans = 0
s.each do |c|
  if stack.empty?
    stack << c
  elsif stack[-1] == c
    stack << c
  else
    stack.pop
    ans += 2
  end
end

puts ans
