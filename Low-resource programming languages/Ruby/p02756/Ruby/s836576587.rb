s = gets.chomp
q = gets.to_i
queries = q.times.map { gets.split }

s1 = ''
reversed = false

queries.each do |t, f, c|
  if t == '1'
    reversed = !reversed
    next
  end

  if (f == '1' && reversed) || (f == '2' && !reversed)
    s << c
  else
    s1 << c
  end
end

if reversed
  puts s.reverse! << s1
else
  puts s1.reverse! << s
end
