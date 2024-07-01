n = gets.to_i
a = []
ans = ""
cnt = 0
n.times{
  cnt += 1
  com = gets.split
  if com[0] == "insert"
    a.unshift(com[1].to_i)
  elsif com[0] == "delete"
    for i in 0..a.size-1
      if a[i] == com[1].to_i
        a.delete_at(i)
        break
      end
    end
  elsif com[0] == "deleteFirst"
    a.shift
  else
    a.pop
  end
}
a.each do |i|
  cnt += 1
  ans += "#{i}"
  ans += " " if cnt != a.size
end
puts ans