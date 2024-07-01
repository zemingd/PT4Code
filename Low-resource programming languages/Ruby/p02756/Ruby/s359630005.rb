s = gets.chomp
q = gets.chomp.to_i
a = [s]
count = 0
q.times do
  u, f, c = gets.chomp.split
  if u.to_i == 1
    count += 1 if a.uniq.size != 1
  else
    if count.even? && f.to_i == 1 || count.odd? && f.to_i != 1
      a.unshift(c)
    else
      a.push(c)
    end
  end
end

if count.odd?
  a.reverse!
end
puts a.join('')
