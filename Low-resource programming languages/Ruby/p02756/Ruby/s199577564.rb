s = gets.chomp.chars
q = gets.to_i

rev = false
q.times do
  t, f, c = gets.split
  if t == '1'
    rev = !rev
  else
    if f == '1' && rev || f == '2' && !rev
      s.push(c)
    else
      s.unshift(c)
    end
  end
end
puts rev ? s.reverse.join : s.join
