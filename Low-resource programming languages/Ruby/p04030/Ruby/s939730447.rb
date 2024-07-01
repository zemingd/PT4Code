
answer = ""
gets.each_char do |c|
  answer += "1"            if c == "1"
  answer += "0"            if c == "0"
  answer = answer[0 .. -2] if c == "B"
end
puts answer
