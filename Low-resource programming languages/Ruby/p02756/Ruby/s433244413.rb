s = gets.to_s.chomp.bytes
q = gets.to_s.to_i

reverse_state = false

l = []
r = []
q.times do
  
  query = gets.to_s.split
  # p query
  if query[0] == "1"
    reverse_state = !reverse_state
    # s.reverse!
  else
    if query[1] == "1"
      reverse_state ? (r << query[2].ord)  : (l << query[2].ord)
    else
      reverse_state ? (l << query[2].ord) : (r << query[2].ord)
    end
  end
  p 
end

if reverse_state
  puts (r.reverse + s.reverse + l ).pack("U*")
else
  puts (l.reverse + s + r ).pack("U*")
end