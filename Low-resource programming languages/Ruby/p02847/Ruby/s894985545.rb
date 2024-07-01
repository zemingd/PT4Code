S = gets.strip.to_s
day = ["SUN","MON","TUE","WED","THU","FRI","SAT"]
i = 0
k = 0
while i >= 0 do
  if S == day[k] then
    break
  end
  k += 1
end
puts 7-k