$list = []

def insert(x)
  $list.insert 0, x
end

def delete(x)
  $list.delete_at $list.index(x) unless $list.index(x).nil?
end

def deleteFirst
  $list.delete_at 0
end

def deleteLast
  $list.delete_at(-1)
end

n = gets.to_i
n.times do
  eval gets
  p $list
end

puts $list.join ' '

