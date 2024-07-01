s = gets.chomp.to_s
q_n = gets.chomp.to_i
q = []

q_n.times do
  t,f,c = gets.chomp.split(' ').map(&:to_s)
  if t.to_i === 1
    q << [t.to_i]
  else
    q << [t.to_i, f.to_i, c]
  end

end

q.each do |query|
  if query[0] === 1
    s.reverse!
  else
    if query[1] === 1
      s = query[2] + s
    else
      s = s + query[2]
    end
  end
end

puts s
