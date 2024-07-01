s = gets
answer = []
s.each_char do |c|
  if c == "0"
    answer.push(c)
  elsif c == "1"
    answer.push(c)
  else
    answer.pop
  end
end
print answer.join