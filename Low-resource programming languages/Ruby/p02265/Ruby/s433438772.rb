n = gets.to_i
list = []
n.times do
  c, n = gets.split
  case c
  when 'insert'
    list.unshift(n)
  when 'delete'
    idx = list.index(n)
    list.delete_at(idx) if idx
  when 'deleteFirst'
    list.shift
  when 'deleteLast'
    list.pop
  else
  end
end
puts list.join(' ')
