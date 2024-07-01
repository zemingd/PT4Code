i = gets.chomp.to_i
a = []
i.times do
 a << gets.chomp.split(' ')
end
b = []
a.each do |item|
  case item[0]
  when 'insert'
    b.unshift item[1]
  when 'delete'
    b.delete_at(b.index(item[1]))
  when 'deleteFirst'
    b.shift
  when 'deleteLast'
    b.delete_at(b.length-1)
  end
end
puts b.join(' ')