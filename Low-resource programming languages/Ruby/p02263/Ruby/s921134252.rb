#!/usr/bin/ruby
# AOJ
# ALDS1_3 A
# Revers polish notation

operands = gets.split(' ')
stack = []

operands.each do |ope|
  if /^\d+$/.match ope
    stack.push ope.to_i
  else
    tmp = stack.pop
    case ope
    when '+' then
      ans = stack.pop + tmp
    when '-' then
      ans = stack.pop - tmp
    when '*' then
      ans = stack.pop * tmp
    when '/' then
      ans = stack.pop / tmp
    end
    stack.push ans
  end
end

puts stack.pop