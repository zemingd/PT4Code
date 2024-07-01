#!/usr/bin/env ruby

n = gets.chomp.to_i

list = []
n.times do
  action = gets.chomp.split

  case action[0]
  when 'insert'
    list << action[1].to_i
  when 'delete'
    list.delete_at(list.index(action[1].to_i))
  when 'deleteFirst'
    list.shift
  when 'deleteLast'
    list.pop
  end
end

puts list.reverse * ' '