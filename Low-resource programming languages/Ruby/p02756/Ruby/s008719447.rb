s = gets.chomp
q = gets.chomp.to_i
count = 0
q.times do
  u, f, c = gets.chomp.split
  if u.to_i == 1
    count += 1
  else
    if count.even? && f.to_i == 1 || count.odd? && f.to_i != 1
      s.insert(0, c)
    else
      s.concat(c)
    end
  end
end

if count.odd?
  s.reverse!
end
puts s
