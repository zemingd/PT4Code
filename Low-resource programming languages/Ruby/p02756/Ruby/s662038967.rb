s = gets.strip
q = gets.to_i

reversed = false

q.times do
  query = gets.split("\s")
  if query[0] == '1'
    reversed = ! reversed
    next
  end

  if query[1] == '1'
    s = reversed ? s + query[2] : query[2] + s
    next
  end
    
  s = reversed ? query[2] + s : s + query[2]
end

if reversed
  s.reverse!
end
    
print s
