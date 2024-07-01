s = gets.chomp
q = gets.to_i
flg = true
q.times do
  t, f, c = gets.chomp.split
  if t == "1"
    flg = !flg
  else
    if f == "1" && flg || f == "2" && !flg
      s = c + s
    else
      s += c
    end
  end
end
if !flg
  s.reverse!
end
puts s
