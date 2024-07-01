s = gets.chomp
q = gets.to_i

before_reverse = 0
q.times do
  t, f, c = gets.chomp.split(" ")
  if t == "1"
    before_reverse += 1
  elsif t == "2"
    if before_reverse % 2 == 1
      s.reverse!
    end
    before_reverse = 0
    if f == "1"
      s = c + s
    elsif f == "2"
      s = s + c
    end
  end
end
if before_reverse % 2 == 1
  s.reverse!
end

print "#{s}\n"