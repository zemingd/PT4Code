s = gets.chomp.split('')
q = gets.to_i
for i in 1..q
  query = gets.split
  if query[0].to_i == 1
    s.reverse!
    next
  else
    if query[1].to_i == 1
      s.unshift(query[-1])
      next
    else
      s.push(query[-1])
      next
    end
  end
end
puts s.join
