l = []
gets.to_i.times do
  com, n = gets.split
  case com
  when 'insert'
    l.unshift(n)
  when 'delete'
    i = l.index(n)
    l.delete_at(i)
  when 'deleteFirst'
    l.shift
  when 'deleteLast'
    l.pop
  end
end
puts l * ' '