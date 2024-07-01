def insert(l,x)
  return l.unshift(x)
end

def delete(l,x)
  for i in 0..l.size-1 do
    if l[i]==x
      return l.delete_at(i)
    end
  end
end

def deleteFirst(l)
  return l.shift
end

def deleteLast(l)
  return l.pop
end

n = gets.chomp.to_i
l = []
for i in 1..n do
  c = gets.chomp.split(" ")
  case c[0]
  when "insert" then
    insert(l,c[1])
  when "delete" then
    delete(l,c[1])
  when "deleteFirst" then
    deleteFirst(l)
  when "deleteLast" then
    deleteLast(l)
  end
end
printf("%s\n",l.join(" "))
