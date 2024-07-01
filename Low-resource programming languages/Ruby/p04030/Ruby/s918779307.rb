s = gets
result = ""
s.each_char do |c|
  if c == '0'
    result << '0'
  elsif c == '1'
    result << '1'
  elsif c == 'B'
    result.chop!
  end
end

puts result