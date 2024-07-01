s = gets.chomp
q = gets.chomp.to_i

reverse = false

q.times do
  que = gets.split(' ')

  if (que[0] == '1')
    reverse = !reverse
  else
    if (reverse)
      s.reverse!
      reverse = !reverse
    end
    if (que[1] == '1')
      s = que[2] + s
    else
      s = s + que[2]
    end
  end
end

s.reverse! if (reverse)

puts s
