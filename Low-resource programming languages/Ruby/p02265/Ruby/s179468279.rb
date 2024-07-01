array = Array.new
gets.to_i.times do
  command = gets.chomp.split
  case command[0]
  when 'insert'
    array.unshift(command[1].to_i)
  when 'delete'
    begin
      array.delete_at(array.index(command[1].to_i))
    rescue
    end
  when 'deleteFirst'
    array.shift
  when 'deleteLast'
    array.pop
  end
end

puts array*' '