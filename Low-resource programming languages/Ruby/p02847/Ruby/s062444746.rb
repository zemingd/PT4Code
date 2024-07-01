 S = gets.chomp.to_s
week = ["SUN","MON","TUE","WED","THU","FRI","SAT"]

ans = 0
week.each_with_index do |string,i|
  if S == string
    ans = 7 - i
  end
end
p ans