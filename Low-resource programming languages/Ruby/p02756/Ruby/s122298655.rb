a = gets.chomp.split('')
q = gets.chomp.to_i
flag = true
q.times do
  u, f, c = gets.chomp.split
  if u.to_i == 1
    if flag
      flag = false
    else
      flag = true
    end
  else
    if flag && f.to_i == 1 || !flag && f.to_i != 1
      a.unshift(c)
    else
      a.push(c)
    end
  end
end

if !flag
  a.reverse!
end
puts a.join('')
