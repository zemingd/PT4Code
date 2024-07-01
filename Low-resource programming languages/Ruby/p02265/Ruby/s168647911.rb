list = []

n = gets.to_i
n.times do
  c, x = gets.split

  case c
  when 'insert'
    list.unshift(x)
  when 'delete'
    list.delete_at(list.index(x)) if list.index(x)
  when 'deleteFirst'
    list.shift
  when 'deleteLast'
    list.pop
  end
end

puts list.join("\s")