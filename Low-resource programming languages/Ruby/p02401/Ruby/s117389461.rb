line = gets.split
ans = 0

case line[1]
when "+"
  ans = line[0].to_i + line[2].to_i

when "-"
  ans = line[0].to_i - line[2].to_i

when "*"
  ans = line[0].to_i * line[2].to_i

when "/"
  ans = line[0].to_i / line[2].to_i
else
  ans = ""
end

puts ans
