s = gets.to_s.chomp
q = gets.to_s.to_i

lr = [[], []]
state = 0

$<.each do |query|
  
  query.chomp!
  # p query
  if query == "1"
    state = 1 - state
    # s.reverse!
  else
    if (query[0,3] == "2 1" && state == 0) || (query[0,3] == "2 2" && state == 1)
      s = query[-1] + s 
    else
      s.push query[-1]
    end
  end
end

if state == 1
  # puts (lr[state].reverse + s.reverse + lr[1-state] ).pack("U*")
  puts s.reverse
else
  puts s
  # puts (lr[state].reverse + s + lr[1-state] ).pack("U*")
end