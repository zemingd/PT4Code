#!/usr/bin/env ruby

n = gets.chomp.to_i

list = []
n.times do
  action = gets.chomp.split

  case action[0]
  when 'insert'
    list << action[1].to_i
  when 'delete'
    i = list.index(action[1].to_i)
    list.delete_at(i) if i
  when 'deleteFirst'
    list.pop
  when 'deleteLast'
    list.shift
  end
end

puts list.reverse * ' '