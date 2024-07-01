s = gets.chomp
q = gets.to_i
rev = 0
q.times do
  t, f, c = gets.chomp.split
  if t == "1"
    rev = 1 - rev
  else
    if f.to_i - rev == 1
      s = c + s
    else
      s += c
    end
  end
end
s.reverse! if rev == 1
puts s
