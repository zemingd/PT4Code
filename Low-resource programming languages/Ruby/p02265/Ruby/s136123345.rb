$list = []

def insert(x)
  $list.insert 0, x
end

def delete(x)
  $list.delete_at $list.index(x)
end

def deleteFirst
  $list.delete 0
end

def deleteLast
  $list.delete(-1)
end

n = gets.to_i
n.times do
  eval gets
end

puts $list.join ' '

