s = gets.chomp
Q = gets.chomp.to_i

while q = gets&.chomp&.split(' ')
  if q.size == 1
    s.reverse!
  else
    if q[1] == '1'
      s = "#{q[2]}#{s}"
    else
      s = "#{s}#{q[2]}"
    end
  end
end

puts s
