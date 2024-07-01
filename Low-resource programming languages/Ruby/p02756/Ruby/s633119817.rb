s = gets.chop
queue_top = []
queue_last = []
flg = true # true: asc/false: desc
q = gets.to_i
q.times do
  c, *rest = gets.split
  case c
  when '1'
    flg = !flg
  when '2'
    if rest[0] == '1' && flg || rest[0] == '2' && !flg
      queue_top.unshift(rest[1])
    else
      queue_last.push(rest[1])
    end
  end
end
s = queue_top.join + s + queue_last.join
puts flg ? s : s.reverse