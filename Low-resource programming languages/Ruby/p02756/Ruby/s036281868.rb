s = gets.to_s.chomp.bytes
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
    if query[0,3] == "2 1"
      lr[state] << query[-1].ord
    else
      lr[1-state] << query[-1].ord
    end
  end
end

if state.zero?
  puts (lr[state] + s.reverse + lr[1-state] ).pack("U*")
else
  puts (lr[state] + s + lr[1-state] ).pack("U*")
end