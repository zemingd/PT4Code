#!/usr/bin/env ruby

stack = []

gets.chomp.split.each do |chr|
  case chr
  when '+' then
    stack << stack.pop + stack.pop
  when '-' then
    a = stack.pop
    b = stack.pop
    stack << b - a
  when '*' then
    stack << stack.pop * stack.pop
  else
    stack << chr.to_i
  end
end

puts stack.pop