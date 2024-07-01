s = gets.strip
q = gets.to_i
is_reverse = false

q.times do
  query = gets.split("\s")
  
  if query[0] == '1'
    is_reverse = ! is_reverse
    next
  end
  
  if (! is_reverse && query[1] == '1') || (is_reverse && query[1] == '2')
    s.unshift(query[2])
    next
  end
  
  s.push(query[2])
end

print is_reverse ? s.reverse! : s