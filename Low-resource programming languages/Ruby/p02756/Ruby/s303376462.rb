require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
s = gets.chomp
q = gets.chomp.to_i

normal = true
head = ''
tail = ''
q.times do
  query = gets.chomp.split
  if query[0] == '1'
    normal = !normal
  else
    if query[1] == '1'
      if normal
        head += query[2]
      else
        tail += query[2]
      end
    else
      if normal
        tail += query[2]
      else
        head += query[2]
      end
    end
  end
end

#p [s, head, tail, normal]

ans = head.reverse + s + tail

ans.reverse! if !normal

puts ans