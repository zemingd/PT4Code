s = gets.split("").map(&:to_i)
fiv=sev=0
s.size.times do |i|
  fiv += 1 if s[i] == 5
  sev += 1 if s[i] == 7
end
puts fiv==2 && sev==1 ? 'YES' : 'NO'