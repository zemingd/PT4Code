s = gets.chomp
q = gets.to_i
q.times do
  a = gets.chomp.split
  if a[0] == '1'
    s.reverse!
  else
    if a[1] == '1'
      s = a[2] + s
    else
      s += a[2]
    end
  end
end

puts s
