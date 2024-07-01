s = gets.chop
q = gets.to_i
q.times do
  c, *rest = gets.split
  case c
  when '1'
    s = s.reverse
  when '2'
    case rest[0]
    when '1'
      s = rest[1] + s
    when '2'
      s = s + rest[1]
    end
  end
end
puts s