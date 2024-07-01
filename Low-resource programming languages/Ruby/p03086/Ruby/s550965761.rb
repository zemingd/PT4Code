s = gets.strip.split("")

ans = 0
cnt = 0

s.each do |s_i|
  if ["A", "C", "G", "T"].include?(s_i)
    cnt += 1
  else
    ans = [ans, cnt].max
    cnt = 0
    break
  end
end

puts ans