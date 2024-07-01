s = gets.chomp
q = gets.to_i

s1 = ''
s2 = s
reversed = false

q.times do
  t, f, c = gets.split

  if t.to_i == 1
    reversed = !reversed
    next
  end

  if (f.to_i == 1 && reversed) || (f.to_i == 2 && !reversed)
    s2 << c
  else
    s1 << c
  end
end

if reversed
  puts s2.reverse! << s1
else
  puts s1.reverse! << s2
end