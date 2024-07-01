ans = 0

file.readlines.each do |line| 
  line = line.split
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
    return
  end
  puts ans
end
