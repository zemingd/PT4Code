# https://atcoder.jp/contests/abc120/tasks/abc120_c

input = gets.strip
stack = []
i = 0
rem = 0

stack.push input[i]
while i < input.size - 1
  i += 1
  if (input[i] == '0' && stack[-1] == '1') || (input[i] == '1' && stack[-1] == '0')
    stack.pop
    rem += 2
  else
    stack.push input[i]
  end
end

puts rem
