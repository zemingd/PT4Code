s = gets.chomp
t = ""
s.each_char do |c|
  if c == ?B
    t.chop!
  else
    t += c
  end
end
puts t