n = gets.to_i
a = []
n.times do
  s = gets.split
  case s[0]
  when 'insert'
    a.unshift s[1].to_i
  when 'delete'
    i = a.index s[1].to_i
    a.delete_at i if i
  when 'deleteFirst'
    a.shift
  when 'deleteLast'
    a.pop
  end
end

puts a * ' '

