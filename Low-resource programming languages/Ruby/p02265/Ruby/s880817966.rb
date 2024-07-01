n = gets.chomp.to_i
list = []
n.times do
  op, key = gets.chomp.split

  case op
  when 'insert'
    list.unshift(key)
  when 'delete'
    if idx = list.index(key)
      list.delete_at(idx)
    end
  when 'deleteFirst'
    list.shift
  when 'deleteLast'
    list.pop
  end
end
puts list.join(' ')
