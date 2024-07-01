n = gets.to_i
result = []
n.times do
  c, e = gets.split
  case c
  when 'insert'
    result.unshift(e)
  when 'delete'
    next if e.nil?
    i = result.index(e)
    result.delete_at(i)
  when 'deleteFirst'
    result.shift
  else
    result.pop
  end
end
puts result.join(' ')