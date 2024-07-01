# frozen_string_literal: true

s = gets.chomp.split
stack = []
sp = 0
s.each do |x|
  if x == '+'
    stack[sp - 2] = stack[sp - 1] + stack[sp - 2]
    sp -= 1
  elsif x == '-'
    stack[sp - 2] = stack[sp - 2] - stack[sp - 1]
    sp -= 1
  elsif x == '*'
    stack[sp - 2] = stack[sp - 1] * stack[sp - 2]
    sp -= 1
  else
    stack[sp] = x.to_i
    sp += 1
  end
end
puts stack[0]

