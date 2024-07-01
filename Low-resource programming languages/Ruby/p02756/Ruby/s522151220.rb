s = gets.chomp
q = gets.to_i

q.times do
  t, f, c = gets.chomp.split(" ")
  if t == "1"
    s.reverse!
  elsif t == "2"
    if f == "1"
      s = c + s
    elsif f == "2"
      s = s + c
    end
  end
end

print "#{s}\n"