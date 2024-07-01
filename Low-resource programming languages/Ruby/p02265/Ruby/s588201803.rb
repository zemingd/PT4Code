n = gets.chomp.to_i
array = []

(n).times do |index| 
  command = gets.chomp.split
  case command[0]
  when 'insert'
    array.unshift command[1]
  when 'delete'
    found = false
    array.delete_if do |item|
      if item == command[1] then
        if !found then
          found = true
        end
      end
    end
  when 'deleteFirst'
    array.shift
  when 'deleteLast'
    array.pop
  end
end

puts array.join(' ')