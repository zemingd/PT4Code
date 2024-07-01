s = gets.strip.split("")

ans = 0
cnt = 0

s.each do |s_i|
  if ["A", "C", "G", "T"].include?(s_i)
    cnt += 1
    ans = [ans, cnt].max
  else
    cnt = 0
  end
end

puts ans