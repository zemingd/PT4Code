s = gets
t = ""
s.each do |c|
  if c == ?B
    t.chop!
  else
    t += c
  end
end
puts t