s = gets.chomp
q = gets.to_i

q.times do
  q, f, c = gets.chomp.split
  if q.to_i == 1
    s.reverse!
  elsif f.to_i == 1
    s = c + s
  else
    s = s + c
  end
end

print s