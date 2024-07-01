i = []

gets.to_i.times do
  a, b = gets.split
  case a
  when 'insert' then i.unshift(b)
  when 'delete'
    c = i.index(b)
    i.delete_at(c) unless c.nil?
  when 'deleteFirst' then i.shift
  when 'deleteLast' then i.pop
  end
end

puts i.join(' ')