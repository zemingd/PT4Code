n = gets.to_i
a = []
n.times do
  c, num = gets.chomp.split
  case c
  when 'insert'
    a.unshift(num)
  when 'delete'
    idx = a.index(num)
    a.delete_at(idx) if idx
  when 'deleteFirst'
    a.shift
  else
    a.pop
  end
end
puts a.join(" ")
