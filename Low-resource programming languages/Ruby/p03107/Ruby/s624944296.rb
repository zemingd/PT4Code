s = gets.chomp
stack = []
cnt = 0
s.each_char{|a|
  if stack.last != a && stack.empty?.!
    cnt+=2
    stack.pop
  else
    stack.push a
  end
}
puts cnt

