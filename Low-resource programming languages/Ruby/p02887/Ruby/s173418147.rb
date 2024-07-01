n = gets
ss = gets.strip.split("")

stack = []
stacked = 0
len = ss.length

0.upto(len-1) do |idx|
  current = ss[idx]

  if stack.empty?
    stack[stacked] = current
    next
  end

  if stack[stacked] == current
    next
  end

  stacked += 1
  stack[stacked] = current
end

puts stacked + 1