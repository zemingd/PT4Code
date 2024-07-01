S = gets.chomp
Q = gets.to_i

s = S

Q.times do
  t, f, c = gets.split

  if t == '1'
    s.reverse!
  else
    if f == '1'
      s = c + s
    else
      s = s + c
    end
  end
end


puts s