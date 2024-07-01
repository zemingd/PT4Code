s = gets.chomp
answer = []
s.each_char do |c|
  if c == '0'
    answer << '0'
  elsif c == '1'
    answer << '1'
  elsif c == 'B'
    answer.pop
  else
    print "error"
  end
end
puts answer.join("")
