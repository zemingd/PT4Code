n = gets.to_i

result = []
commands = []

n.times do
  commands << gets.chomp
end

commands.each do |command|
  if command.include?(' ')
    command, num = command.split

    case command
    when 'insert'
      result.unshift(num)
    when 'delete'
      result.delete_at(result.find_index(num))
    end
  else
    case command
    when 'deleteFirst'
      result.shift
    when 'deleteLast'
      result.pop
    end
  end
end

puts result.join(' ')