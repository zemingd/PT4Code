readlines.each do |line| 
  ans = 0
  line = line.split
  case line[1]
  when "?"
    break
  when "+"
    ans = line[0].to_i + line[2].to_i

  when "-"
    ans = line[0].to_i - line[2].to_i

  when "*"
    ans = line[0].to_i * line[2].to_i

  when "/"
    ans = line[0].to_i / line[2].to_i
  end
  puts ans.to_s
end
