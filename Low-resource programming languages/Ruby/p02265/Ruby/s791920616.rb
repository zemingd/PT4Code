#!/usr/bin/env ruby

n = gets.chomp.to_i

list = []
n.times do
  action, num = gets.chomp.split

  case action
  when 'insert'
    list.unshift(num.to_i)
  when 'delete'
    i = list.index(num.to_i)
    list.delete_at(i) if i
  when 'deleteFirst'
    list.shift
  when 'deleteLast'
    list.pop
  end
end

puts list.reverse * ' '