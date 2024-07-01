n = gets.strip.to_i
ac = 0
wa = 0
tl = 0
re = 0
n.times do |i|
  s = gets.strip
  case s
  when "AC"
    ac += 1
  when "WA"
    wa += 1
  when "TLE"
    tl += 1
  when "RE"
    re += 1
  end
end
puts "AC x #{ac}"
puts "WA x #{wa}"
puts "TLE x #{tl}"
puts "RE x #{re}"
