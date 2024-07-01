s = gets
answer = []
s.each_char do |c|
  if c == "0"
    answer.push(c)
  elsif c == "1"
    answer.push(c)
  elsif c == "B"
    answer.pop
  else
    print "error"
  end
end
puts answer.join
