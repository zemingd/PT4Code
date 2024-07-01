def insert(num, list)
  list.unshift num
end

def delete(num, list)
  list.delete_at(list.index(num)) if list.include?(num)
  list
end

def deleteFirst(list)
  list.shift
  list
end

def deleteLast(list)
  list.pop
  list
end

def exec_commmand(input, list)
  if input.include?('First') || input.include?('Last')
    send(input, list)
  else
    command, num = input.split(' ')
    send(command, num, list)
  end
end

n = gets.to_i
list = []
n.times do
  list = exec_commmand(gets.chomp, list)
end

puts list.join(' ')
