s = gets.chomp
q = gets.to_i
f = true
l = []
r = []
q.times do
  t = gets
  if t[0] == '1'
    f = !f
  elsif f
    if t[2] == '1'
      l.unshift(t[4])
    else
      r.push(t[4])
    end
  else
    if t[2] == '1'
      r.push(t[4])
    else
      l.unshift(t[4])
    end
  end
end
if f
  puts l.join('') << s << r.join('')
else
  puts (l.join('') << s << r.join('')).reverse
end